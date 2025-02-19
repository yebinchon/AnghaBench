
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int (* check_revocation ) (TYPE_2__*) ;int (* verify ) (TYPE_2__*) ;int (* check_policy ) (TYPE_2__*) ;TYPE_1__* param; int error_depth; int chain; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_16__ {int flags; } ;


 int X509_V_FLAG_POLICY_CHECK ;
 int X509_V_OK ;
 int X509_chain_check_suiteb (int *,int *,int ,int) ;
 int X509_get_pubkey_parameters (int *,int ) ;
 int X509v3_addr_validate_path (TYPE_2__*) ;
 int X509v3_asid_validate_path (TYPE_2__*) ;
 int build_chain (TYPE_2__*) ;
 int check_auth_level (TYPE_2__*) ;
 int check_chain_extensions (TYPE_2__*) ;
 int check_id (TYPE_2__*) ;
 int check_name_constraints (TYPE_2__*) ;
 int internal_verify (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int verify_cb_cert (TYPE_2__*,int *,int ,int) ;

__attribute__((used)) static int verify_chain(X509_STORE_CTX *ctx)
{
    int err;
    int ok;





    if ((ok = build_chain(ctx)) == 0 ||
        (ok = check_chain_extensions(ctx)) == 0 ||
        (ok = check_auth_level(ctx)) == 0 ||
        (ok = check_id(ctx)) == 0 || 1)
        X509_get_pubkey_parameters(((void*)0), ctx->chain);
    if (ok == 0 || (ok = ctx->check_revocation(ctx)) == 0)
        return ok;

    err = X509_chain_check_suiteb(&ctx->error_depth, ((void*)0), ctx->chain,
                                  ctx->param->flags);
    if (err != X509_V_OK) {
        if ((ok = verify_cb_cert(ctx, ((void*)0), ctx->error_depth, err)) == 0)
            return ok;
    }


    ok = (ctx->verify != ((void*)0)) ? ctx->verify(ctx) : internal_verify(ctx);
    if (!ok)
        return ok;

    if ((ok = check_name_constraints(ctx)) == 0)
        return ok;



    if ((ok = X509v3_asid_validate_path(ctx)) == 0)
        return ok;
    if ((ok = X509v3_addr_validate_path(ctx)) == 0)
        return ok;



    if (ctx->param->flags & X509_V_FLAG_POLICY_CHECK)
        ok = ctx->check_policy(ctx);
    return ok;
}
