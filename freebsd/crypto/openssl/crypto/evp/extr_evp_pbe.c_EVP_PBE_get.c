
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pbe_type; int pbe_nid; } ;
typedef TYPE_1__ EVP_PBE_CTL ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* builtin_pbe ;

int EVP_PBE_get(int *ptype, int *ppbe_nid, size_t num)
{
    const EVP_PBE_CTL *tpbe;

    if (num >= OSSL_NELEM(builtin_pbe))
        return 0;

    tpbe = builtin_pbe + num;
    if (ptype)
        *ptype = tpbe->pbe_type;
    if (ppbe_nid)
        *ppbe_nid = tpbe->pbe_nid;
    return 1;
}
