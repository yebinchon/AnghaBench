
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint8_t ;
struct ibv_context_1_0 {int real_context; } ;


 int ibv_query_gid (int ,int ,int,union ibv_gid*) ;

int __ibv_query_gid_1_0(struct ibv_context_1_0 *context, uint8_t port_num,
   int index, union ibv_gid *gid)
{
 return ibv_query_gid(context->real_context, port_num, index, gid);
}
