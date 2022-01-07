
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pmeth_engine; int type; } ;
typedef TYPE_1__ EVP_PKEY ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 int * ENGINE_get_pkey_meth (int *,int ) ;
 int ENGINE_init (int *) ;
 int ERR_R_ENGINE_LIB ;
 int EVP_F_EVP_PKEY_SET1_ENGINE ;
 int EVP_R_UNSUPPORTED_ALGORITHM ;
 int EVPerr (int ,int ) ;

int EVP_PKEY_set1_engine(EVP_PKEY *pkey, ENGINE *e)
{
    if (e != ((void*)0)) {
        if (!ENGINE_init(e)) {
            EVPerr(EVP_F_EVP_PKEY_SET1_ENGINE, ERR_R_ENGINE_LIB);
            return 0;
        }
        if (ENGINE_get_pkey_meth(e, pkey->type) == ((void*)0)) {
            ENGINE_finish(e);
            EVPerr(EVP_F_EVP_PKEY_SET1_ENGINE, EVP_R_UNSUPPORTED_ALGORITHM);
            return 0;
        }
    }
    ENGINE_finish(pkey->pmeth_engine);
    pkey->pmeth_engine = e;
    return 1;
}
