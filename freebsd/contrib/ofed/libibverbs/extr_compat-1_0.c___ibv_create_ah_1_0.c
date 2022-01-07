
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd_1_0 {int context; int real_pd; } ;
struct ibv_ah_attr {int dummy; } ;
struct ibv_ah_1_0 {struct ibv_ah* real_ah; struct ibv_pd_1_0* pd; int context; } ;
struct ibv_ah {int dummy; } ;


 int free (struct ibv_ah_1_0*) ;
 struct ibv_ah* ibv_create_ah (int ,struct ibv_ah_attr*) ;
 struct ibv_ah_1_0* malloc (int) ;

struct ibv_ah_1_0 *__ibv_create_ah_1_0(struct ibv_pd_1_0 *pd,
           struct ibv_ah_attr *attr)
{
 struct ibv_ah *real_ah;
 struct ibv_ah_1_0 *ah;

 ah = malloc(sizeof *ah);
 if (!ah)
  return ((void*)0);

 real_ah = ibv_create_ah(pd->real_pd, attr);
 if (!real_ah) {
  free(ah);
  return ((void*)0);
 }

 ah->context = pd->context;
 ah->pd = pd;
 ah->real_ah = real_ah;

 return ah;
}
