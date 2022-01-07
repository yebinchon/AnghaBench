
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* krb5_init_creds_context ;
typedef int krb5_context ;
struct TYPE_7__ {struct TYPE_7__* ppaid; int as_req; int error; int enc_part; int as_rep; int md; int cred; int req_buffer; struct TYPE_7__* password; struct TYPE_7__* keytab_data; struct TYPE_7__* in_tkt_service; struct TYPE_7__* pre_auth_types; struct TYPE_7__* etypes; } ;


 int free (TYPE_1__*) ;
 int free_AS_REP (int *) ;
 int free_AS_REQ (int *) ;
 int free_EncKDCRepPart (int *) ;
 int free_KRB_ERROR (int *) ;
 int free_METHOD_DATA (int *) ;
 int free_paid (int ,TYPE_1__*) ;
 int krb5_data_free (int *) ;
 int krb5_free_cred_contents (int ,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (TYPE_1__*) ;

__attribute__((used)) static void
free_init_creds_ctx(krb5_context context, krb5_init_creds_context ctx)
{
    if (ctx->etypes)
 free(ctx->etypes);
    if (ctx->pre_auth_types)
 free (ctx->pre_auth_types);
    if (ctx->in_tkt_service)
 free(ctx->in_tkt_service);
    if (ctx->keytab_data)
 free(ctx->keytab_data);
    if (ctx->password) {
 memset(ctx->password, 0, strlen(ctx->password));
 free(ctx->password);
    }
    krb5_data_free(&ctx->req_buffer);
    krb5_free_cred_contents(context, &ctx->cred);
    free_METHOD_DATA(&ctx->md);
    free_AS_REP(&ctx->as_rep);
    free_EncKDCRepPart(&ctx->enc_part);
    free_KRB_ERROR(&ctx->error);
    free_AS_REQ(&ctx->as_req);
    if (ctx->ppaid) {
 free_paid(context, ctx->ppaid);
 free(ctx->ppaid);
    }
    memset(ctx, 0, sizeof(*ctx));
}
