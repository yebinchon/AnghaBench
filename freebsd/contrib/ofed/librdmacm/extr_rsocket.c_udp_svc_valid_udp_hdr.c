
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; } ;
union socket_addr {TYPE_1__ sa; } ;
struct ds_udp_header {scalar_t__ tag; int version; scalar_t__ length; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ DS_UDP_IPV4_HDR_LEN ;
 scalar_t__ DS_UDP_IPV6_HDR_LEN ;
 int DS_UDP_TAG ;
 scalar_t__ htobe32 (int ) ;

__attribute__((used)) static int udp_svc_valid_udp_hdr(struct ds_udp_header *udp_hdr,
     union socket_addr *addr)
{
 return (udp_hdr->tag == htobe32(DS_UDP_TAG)) &&
  ((udp_hdr->version == 4 && addr->sa.sa_family == AF_INET &&
    udp_hdr->length == DS_UDP_IPV4_HDR_LEN) ||
   (udp_hdr->version == 6 && addr->sa.sa_family == AF_INET6 &&
    udp_hdr->length == DS_UDP_IPV6_HDR_LEN));
}
