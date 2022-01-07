
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ibv_gid {int dummy; } ibv_gid ;
typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct ip {int ip_tos; int ip_ttl; TYPE_2__ ip_src; TYPE_1__ ip_dst; } ;
struct in6_addr {int dummy; } ;
struct ibv_context {int dummy; } ;
struct TYPE_6__ {int traffic_class; int hop_limit; scalar_t__ sgid_index; int dgid; } ;
struct ibv_ah_attr {TYPE_3__ grh; } ;


 int EINVAL ;
 int IBV_GID_TYPE_ROCE_V2 ;
 scalar_t__ IN_CLASSD (int ) ;
 int be32toh (int ) ;
 int errno ;
 int ibv_find_gid_index (struct ibv_context*,scalar_t__,union ibv_gid*,int ) ;
 int map_ipv4_addr_to_ipv6 (int ,struct in6_addr*) ;

__attribute__((used)) static inline int set_ah_attr_by_ipv4(struct ibv_context *context,
          struct ibv_ah_attr *ah_attr,
          struct ip *ip4h, uint8_t port_num)
{
 union ibv_gid sgid;
 int ret;


 if (IN_CLASSD(be32toh(ip4h->ip_dst.s_addr))) {
  errno = EINVAL;
  return -1;
 }

 map_ipv4_addr_to_ipv6(ip4h->ip_dst.s_addr, (struct in6_addr *)&sgid);
 ret = ibv_find_gid_index(context, port_num, &sgid,
     IBV_GID_TYPE_ROCE_V2);
 if (ret < 0)
  return ret;

 map_ipv4_addr_to_ipv6(ip4h->ip_src.s_addr,
         (struct in6_addr *)&ah_attr->grh.dgid);
 ah_attr->grh.sgid_index = (uint8_t) ret;
 ah_attr->grh.hop_limit = ip4h->ip_ttl;
 ah_attr->grh.traffic_class = ip4h->ip_tos;

 return 0;
}
