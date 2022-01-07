
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
typedef int BIGNUM ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;


 int BN_SENSITIVE ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;

__attribute__((used)) static void bn_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    if (!*pval)
        return;
    if (it->size & BN_SENSITIVE)
        BN_clear_free((BIGNUM *)*pval);
    else
        BN_free((BIGNUM *)*pval);
    *pval = ((void*)0);
}
