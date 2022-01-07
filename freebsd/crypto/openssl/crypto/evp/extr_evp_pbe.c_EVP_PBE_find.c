
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pbe_type; int pbe_nid; int cipher_nid; int md_nid; int * keygen; } ;
typedef int EVP_PBE_KEYGEN ;
typedef TYPE_1__ EVP_PBE_CTL ;


 int NID_undef ;
 TYPE_1__* OBJ_bsearch_pbe2 (TYPE_1__*,int ,int ) ;
 int OSSL_NELEM (int ) ;
 int builtin_pbe ;
 int * pbe_algs ;
 int sk_EVP_PBE_CTL_find (int *,TYPE_1__*) ;
 TYPE_1__* sk_EVP_PBE_CTL_value (int *,int) ;

int EVP_PBE_find(int type, int pbe_nid,
                 int *pcnid, int *pmnid, EVP_PBE_KEYGEN **pkeygen)
{
    EVP_PBE_CTL *pbetmp = ((void*)0), pbelu;
    int i;
    if (pbe_nid == NID_undef)
        return 0;

    pbelu.pbe_type = type;
    pbelu.pbe_nid = pbe_nid;

    if (pbe_algs != ((void*)0)) {
        i = sk_EVP_PBE_CTL_find(pbe_algs, &pbelu);
        pbetmp = sk_EVP_PBE_CTL_value(pbe_algs, i);
    }
    if (pbetmp == ((void*)0)) {
        pbetmp = OBJ_bsearch_pbe2(&pbelu, builtin_pbe, OSSL_NELEM(builtin_pbe));
    }
    if (pbetmp == ((void*)0))
        return 0;
    if (pcnid)
        *pcnid = pbetmp->cipher_nid;
    if (pmnid)
        *pmnid = pbetmp->md_nid;
    if (pkeygen)
        *pkeygen = pbetmp->keygen;
    return 1;
}
