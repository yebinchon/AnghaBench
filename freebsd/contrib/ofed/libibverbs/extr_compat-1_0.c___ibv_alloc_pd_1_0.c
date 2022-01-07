
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_pd_1_0 {struct ibv_pd* real_pd; struct ibv_context_1_0* context; } ;
struct ibv_pd {int dummy; } ;
struct ibv_context_1_0 {int real_context; } ;


 int free (struct ibv_pd_1_0*) ;
 struct ibv_pd* ibv_alloc_pd (int ) ;
 struct ibv_pd_1_0* malloc (int) ;

struct ibv_pd_1_0 *__ibv_alloc_pd_1_0(struct ibv_context_1_0 *context)
{
 struct ibv_pd *real_pd;
 struct ibv_pd_1_0 *pd;

 pd = malloc(sizeof *pd);
 if (!pd)
  return ((void*)0);

 real_pd = ibv_alloc_pd(context->real_context);
 if (!real_pd) {
  free(pd);
  return ((void*)0);
 }

 pd->context = context;
 pd->real_pd = real_pd;

 return pd;
}
