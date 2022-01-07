
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_principal ;
struct TYPE_5__ {int pk_nonce; int ic_flags; int * pk_init_ctx; } ;
typedef TYPE_1__ krb5_get_init_creds_ctx ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {int req_body; } ;
typedef int METHOD_DATA ;
typedef TYPE_2__ AS_REQ ;


 int EINVAL ;
 int N_ (char*,char*) ;
 int _krb5_pk_mk_padata (int ,int *,int ,int,int *,int ,int *) ;
 int krb5_set_error_message (int ,int ,int ) ;

__attribute__((used)) static krb5_error_code
pa_data_to_md_pkinit(krb5_context context,
       const AS_REQ *a,
       const krb5_principal client,
       int win2k,
       krb5_get_init_creds_ctx *ctx,
       METHOD_DATA *md)
{
    if (ctx->pk_init_ctx == ((void*)0))
 return 0;
    krb5_set_error_message(context, EINVAL,
      N_("no support for PKINIT compiled in", ""));
    return EINVAL;

}
