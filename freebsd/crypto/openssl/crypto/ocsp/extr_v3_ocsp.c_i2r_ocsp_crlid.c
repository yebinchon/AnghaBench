
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_2__ {scalar_t__ crlTime; scalar_t__ crlNum; scalar_t__ crlUrl; } ;
typedef TYPE_1__ OCSP_CRLID ;
typedef int BIO ;
typedef int ASN1_STRING ;


 int ASN1_GENERALIZEDTIME_print (int *,scalar_t__) ;
 int ASN1_STRING_print (int *,int *) ;
 scalar_t__ BIO_printf (int *,char*,int,char*) ;
 scalar_t__ BIO_write (int *,char*,int) ;
 scalar_t__ i2a_ASN1_INTEGER (int *,scalar_t__) ;

__attribute__((used)) static int i2r_ocsp_crlid(const X509V3_EXT_METHOD *method, void *in, BIO *bp,
                          int ind)
{
    OCSP_CRLID *a = in;
    if (a->crlUrl) {
        if (BIO_printf(bp, "%*scrlUrl: ", ind, "") <= 0)
            goto err;
        if (!ASN1_STRING_print(bp, (ASN1_STRING *)a->crlUrl))
            goto err;
        if (BIO_write(bp, "\n", 1) <= 0)
            goto err;
    }
    if (a->crlNum) {
        if (BIO_printf(bp, "%*scrlNum: ", ind, "") <= 0)
            goto err;
        if (i2a_ASN1_INTEGER(bp, a->crlNum) <= 0)
            goto err;
        if (BIO_write(bp, "\n", 1) <= 0)
            goto err;
    }
    if (a->crlTime) {
        if (BIO_printf(bp, "%*scrlTime: ", ind, "") <= 0)
            goto err;
        if (!ASN1_GENERALIZEDTIME_print(bp, a->crlTime))
            goto err;
        if (BIO_write(bp, "\n", 1) <= 0)
            goto err;
    }
    return 1;
 err:
    return 0;
}
