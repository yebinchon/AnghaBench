
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_auth_simple_prompt_func_t ;
struct TYPE_4__ {TYPE_2__* provider_baton; int * vtable; } ;
typedef TYPE_1__ svn_auth_provider_object_t ;
struct TYPE_5__ {int retry_limit; void* prompt_baton; int prompt_func; } ;
typedef TYPE_2__ simple_prompt_provider_baton_t ;
typedef int apr_pool_t ;


 void* apr_pcalloc (int *,int) ;
 int simple_prompt_provider ;

void
svn_auth_get_simple_prompt_provider
  (svn_auth_provider_object_t **provider,
   svn_auth_simple_prompt_func_t prompt_func,
   void *prompt_baton,
   int retry_limit,
   apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = apr_pcalloc(pool, sizeof(*po));
  simple_prompt_provider_baton_t *pb = apr_pcalloc(pool, sizeof(*pb));

  pb->prompt_func = prompt_func;
  pb->prompt_baton = prompt_baton;
  pb->retry_limit = retry_limit;

  po->vtable = &simple_prompt_provider;
  po->provider_baton = pb;
  *provider = po;
}
