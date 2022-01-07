
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * policies; } ;
typedef TYPE_1__ TS_RESP_CTX ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OBJ_dup (int const*) ;
 int TS_F_TS_RESP_CTX_ADD_POLICY ;
 int TSerr (int ,int ) ;
 int * sk_ASN1_OBJECT_new_null () ;
 int sk_ASN1_OBJECT_push (int *,int *) ;

int TS_RESP_CTX_add_policy(TS_RESP_CTX *ctx, const ASN1_OBJECT *policy)
{
    ASN1_OBJECT *copy = ((void*)0);

    if (ctx->policies == ((void*)0)
        && (ctx->policies = sk_ASN1_OBJECT_new_null()) == ((void*)0))
        goto err;
    if ((copy = OBJ_dup(policy)) == ((void*)0))
        goto err;
    if (!sk_ASN1_OBJECT_push(ctx->policies, copy))
        goto err;

    return 1;
 err:
    TSerr(TS_F_TS_RESP_CTX_ADD_POLICY, ERR_R_MALLOC_FAILURE);
    ASN1_OBJECT_free(copy);
    return 0;
}
