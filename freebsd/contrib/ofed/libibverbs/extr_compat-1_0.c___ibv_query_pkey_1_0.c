
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibv_context_1_0 {int real_context; } ;
typedef int __be16 ;


 int ibv_query_pkey (int ,int ,int,int *) ;

int __ibv_query_pkey_1_0(struct ibv_context_1_0 *context, uint8_t port_num,
    int index, __be16 *pkey)
{
 return ibv_query_pkey(context->real_context, port_num, index, pkey);
}
