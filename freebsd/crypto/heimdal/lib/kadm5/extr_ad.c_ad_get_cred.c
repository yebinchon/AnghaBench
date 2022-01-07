
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_ccache ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int ccache; int client_name; int context; int realm; } ;
typedef TYPE_1__ kadm5_ad_context ;


 scalar_t__ ENOMEM ;
 int KRB5_TGS_NAME ;
 scalar_t__ _kadm5_c_get_cred_cache (int ,int ,char*,char const*,int ,int *,int *,int *) ;
 int asprintf (char**,char*,int ,int ,int ) ;
 int free (char*) ;
 int krb5_prompter_posix ;

__attribute__((used)) static kadm5_ret_t
ad_get_cred(kadm5_ad_context *context, const char *password)
{
    kadm5_ret_t ret;
    krb5_ccache cc;
    char *service;

    if (context->ccache)
 return 0;

    asprintf(&service, "%s/%s@%s", KRB5_TGS_NAME,
      context->realm, context->realm);
    if (service == ((void*)0))
 return ENOMEM;

    ret = _kadm5_c_get_cred_cache(context->context,
      context->client_name,
      service,
      password, krb5_prompter_posix,
      ((void*)0), ((void*)0), &cc);
    free(service);
    if(ret)
 return ret;
    context->ccache = cc;
    return 0;
}
