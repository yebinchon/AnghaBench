
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pmeth; } ;
struct TYPE_4__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int KEY_OP_KEYGEN ;
 int ecx_key_op (int *,int ,int *,int *,int ,int ) ;

__attribute__((used)) static int pkey_ecx_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    return ecx_key_op(pkey, ctx->pmeth->pkey_id, ((void*)0), ((void*)0), 0, KEY_OP_KEYGEN);
}
