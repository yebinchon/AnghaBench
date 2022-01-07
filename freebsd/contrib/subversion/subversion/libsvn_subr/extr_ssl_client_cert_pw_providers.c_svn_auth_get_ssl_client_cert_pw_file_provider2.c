
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* provider_baton; int * vtable; } ;
typedef TYPE_1__ svn_auth_provider_object_t ;
typedef int svn_auth_plaintext_passphrase_prompt_func_t ;
struct TYPE_5__ {int plaintext_answers; void* prompt_baton; int plaintext_passphrase_prompt_func; } ;
typedef TYPE_2__ ssl_client_cert_pw_file_provider_baton_t ;
typedef int apr_pool_t ;


 int apr_hash_make (int *) ;
 void* apr_pcalloc (int *,int) ;
 int ssl_client_cert_pw_file_provider ;

void
svn_auth_get_ssl_client_cert_pw_file_provider2
  (svn_auth_provider_object_t **provider,
   svn_auth_plaintext_passphrase_prompt_func_t plaintext_passphrase_prompt_func,
   void *prompt_baton,
   apr_pool_t *pool)
{
  svn_auth_provider_object_t *po = apr_pcalloc(pool, sizeof(*po));
  ssl_client_cert_pw_file_provider_baton_t *pb = apr_pcalloc(pool,
                                                             sizeof(*pb));

  pb->plaintext_passphrase_prompt_func = plaintext_passphrase_prompt_func;
  pb->prompt_baton = prompt_baton;
  pb->plaintext_answers = apr_hash_make(pool);

  po->vtable = &ssl_client_cert_pw_file_provider;
  po->provider_baton = pb;
  *provider = po;
}
