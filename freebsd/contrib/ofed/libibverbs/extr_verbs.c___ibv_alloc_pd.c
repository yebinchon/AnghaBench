
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_pd {struct ibv_context* context; } ;
struct TYPE_2__ {struct ibv_pd* (* alloc_pd ) (struct ibv_context*) ;} ;
struct ibv_context {TYPE_1__ ops; } ;


 struct ibv_pd* stub1 (struct ibv_context*) ;

struct ibv_pd *__ibv_alloc_pd(struct ibv_context *context)
{
 struct ibv_pd *pd;

 pd = context->ops.alloc_pd(context);
 if (pd)
  pd->context = context;

 return pd;
}
