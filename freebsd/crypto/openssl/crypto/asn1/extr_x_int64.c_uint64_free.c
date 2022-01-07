
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void uint64_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    OPENSSL_free(*pval);
    *pval = ((void*)0);
}
