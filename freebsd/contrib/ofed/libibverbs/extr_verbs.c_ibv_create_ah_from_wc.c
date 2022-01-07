
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ibv_wc {int dummy; } ;
struct ibv_pd {int context; } ;
struct ibv_grh {int dummy; } ;
struct ibv_ah_attr {int dummy; } ;
struct ibv_ah {int dummy; } ;


 struct ibv_ah* ibv_create_ah (struct ibv_pd*,struct ibv_ah_attr*) ;
 int ibv_init_ah_from_wc (int ,int ,struct ibv_wc*,struct ibv_grh*,struct ibv_ah_attr*) ;

struct ibv_ah *ibv_create_ah_from_wc(struct ibv_pd *pd, struct ibv_wc *wc,
         struct ibv_grh *grh, uint8_t port_num)
{
 struct ibv_ah_attr ah_attr;
 int ret;

 ret = ibv_init_ah_from_wc(pd->context, port_num, wc, grh, &ah_attr);
 if (ret)
  return ((void*)0);

 return ibv_create_ah(pd, &ah_attr);
}
