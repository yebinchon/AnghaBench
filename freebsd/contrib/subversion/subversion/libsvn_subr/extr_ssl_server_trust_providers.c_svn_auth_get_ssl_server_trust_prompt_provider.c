
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_auth_ssl_server_trust_prompt_func_t ;
struct TYPE_6__ {TYPE_2__* provider_baton; int * vtable; } ;
typedef TYPE_1__ svn_auth_provider_object_t ;
struct TYPE_7__ {void* prompt_baton; int prompt_func; } ;
typedef TYPE_2__ ssl_server_trust_prompt_provider_baton_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_palloc (int *,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int ssl_server_trust_prompt_provider ;

void
svn_auth_get_ssl_server_trust_prompt_provider
  (svn_auth_provider_object_t **provider,
   svn_auth_ssl_server_trust_prompt_func_t prompt_func,
   void *prompt_baton,
   apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = apr_pcalloc(pool, sizeof(*po));
  ssl_server_trust_prompt_provider_baton_t *pb =
    apr_palloc(pool, sizeof(*pb));
  pb->prompt_func = prompt_func;
  pb->prompt_baton = prompt_baton;
  po->vtable = &ssl_server_trust_prompt_provider;
  po->provider_baton = pb;
  *provider = po;
}
