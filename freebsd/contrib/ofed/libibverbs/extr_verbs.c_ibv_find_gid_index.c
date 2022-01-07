
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint8_t ;
struct ibv_context {int dummy; } ;
typedef enum ibv_gid_type { ____Placeholder_ibv_gid_type } ibv_gid_type ;


 int ibv_query_gid (struct ibv_context*,int ,int,union ibv_gid*) ;
 int ibv_query_gid_type (struct ibv_context*,int ,int,int*) ;
 scalar_t__ memcmp (union ibv_gid*,union ibv_gid*,int) ;

__attribute__((used)) static int ibv_find_gid_index(struct ibv_context *context, uint8_t port_num,
         union ibv_gid *gid, enum ibv_gid_type gid_type)
{
 enum ibv_gid_type sgid_type = 0;
 union ibv_gid sgid;
 int i = 0, ret;

 do {
  ret = ibv_query_gid(context, port_num, i, &sgid);
  if (!ret) {
   ret = ibv_query_gid_type(context, port_num, i,
       &sgid_type);
  }
  i++;
 } while (!ret && (memcmp(&sgid, gid, sizeof(*gid)) ||
   (gid_type != sgid_type)));

 return ret ? ret : i - 1;
}
