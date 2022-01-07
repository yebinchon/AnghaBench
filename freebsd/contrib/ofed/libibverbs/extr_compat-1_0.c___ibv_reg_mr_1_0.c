
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd_1_0 {int context; int real_pd; } ;
struct ibv_mr_1_0 {struct ibv_mr* real_mr; int rkey; int lkey; struct ibv_pd_1_0* pd; int context; } ;
struct ibv_mr {int rkey; int lkey; } ;


 int free (struct ibv_mr_1_0*) ;
 struct ibv_mr* ibv_reg_mr (int ,void*,size_t,int) ;
 struct ibv_mr_1_0* malloc (int) ;

struct ibv_mr_1_0 *__ibv_reg_mr_1_0(struct ibv_pd_1_0 *pd, void *addr,
        size_t length, int access)
{
 struct ibv_mr *real_mr;
 struct ibv_mr_1_0 *mr;

 mr = malloc(sizeof *mr);
 if (!mr)
  return ((void*)0);

 real_mr = ibv_reg_mr(pd->real_pd, addr, length, access);
 if (!real_mr) {
  free(mr);
  return ((void*)0);
 }

 mr->context = pd->context;
 mr->pd = pd;
 mr->lkey = real_mr->lkey;
 mr->rkey = real_mr->rkey;
 mr->real_mr = real_mr;

 return mr;
}
