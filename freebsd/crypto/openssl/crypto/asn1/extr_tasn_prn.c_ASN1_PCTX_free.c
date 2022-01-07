
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_PCTX ;


 int OPENSSL_free (int *) ;

void ASN1_PCTX_free(ASN1_PCTX *p)
{
    OPENSSL_free(p);
}
