
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* nonce; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int const ASN1_INTEGER ;


 int const* ASN1_INTEGER_dup (int const*) ;
 int ASN1_INTEGER_free (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_TST_INFO_SET_NONCE ;
 int TSerr (int ,int ) ;

int TS_TST_INFO_set_nonce(TS_TST_INFO *a, const ASN1_INTEGER *nonce)
{
    ASN1_INTEGER *new_nonce;

    if (a->nonce == nonce)
        return 1;
    new_nonce = ASN1_INTEGER_dup(nonce);
    if (new_nonce == ((void*)0)) {
        TSerr(TS_F_TS_TST_INFO_SET_NONCE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ASN1_INTEGER_free(a->nonce);
    a->nonce = new_nonce;
    return 1;
}
