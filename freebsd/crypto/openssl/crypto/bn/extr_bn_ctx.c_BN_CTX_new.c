
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stack; int pool; } ;
typedef TYPE_1__ BN_CTX ;


 int BN_F_BN_CTX_NEW ;
 int BN_POOL_init (int *) ;
 int BN_STACK_init (int *) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

BN_CTX *BN_CTX_new(void)
{
    BN_CTX *ret;

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        BNerr(BN_F_BN_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    BN_POOL_init(&ret->pool);
    BN_STACK_init(&ret->stack);
    return ret;
}
