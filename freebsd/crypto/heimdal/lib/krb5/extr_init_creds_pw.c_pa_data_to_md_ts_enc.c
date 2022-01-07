
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int saltvalue; int salttype; } ;
struct pa_info_data {int * s2kparams; TYPE_3__ salt; int etype; } ;
typedef TYPE_3__ krb5_salt ;
typedef int krb5_principal ;
struct TYPE_12__ {int * keyseed; int * keyproc; } ;
typedef TYPE_4__ krb5_get_init_creds_ctx ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_9__ {int len; int * val; } ;
struct TYPE_10__ {TYPE_1__ etype; } ;
struct TYPE_13__ {TYPE_2__ req_body; } ;
typedef int METHOD_DATA ;
typedef TYPE_5__ AS_REQ ;


 int KRB5_PW_SALT ;
 int _krb5_debug (int ,int,char*) ;
 int add_enc_ts_padata (int ,int *,int const,int *,int *,int *,int,TYPE_3__*,int *) ;
 int krb5_data_zero (int *) ;

__attribute__((used)) static krb5_error_code
pa_data_to_md_ts_enc(krb5_context context,
       const AS_REQ *a,
       const krb5_principal client,
       krb5_get_init_creds_ctx *ctx,
       struct pa_info_data *ppaid,
       METHOD_DATA *md)
{
    if (ctx->keyproc == ((void*)0) || ctx->keyseed == ((void*)0))
 return 0;

    if (ppaid) {
 add_enc_ts_padata(context, md, client,
     ctx->keyproc, ctx->keyseed,
     &ppaid->etype, 1,
     &ppaid->salt, ppaid->s2kparams);
    } else {
 krb5_salt salt;

 _krb5_debug(context, 5, "krb5_get_init_creds: pa-info not found, guessing salt");


 add_enc_ts_padata(context, md, client,
     ctx->keyproc, ctx->keyseed,
     a->req_body.etype.val, a->req_body.etype.len,
     ((void*)0), ((void*)0));


 salt.salttype = KRB5_PW_SALT;
 krb5_data_zero(&salt.saltvalue);
 add_enc_ts_padata(context, md, client,
     ctx->keyproc, ctx->keyseed,
     a->req_body.etype.val, a->req_body.etype.len,
     &salt, ((void*)0));
    }
    return 0;
}
