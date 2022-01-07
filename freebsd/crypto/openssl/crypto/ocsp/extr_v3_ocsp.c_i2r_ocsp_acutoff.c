
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int BIO ;


 int ASN1_GENERALIZEDTIME_print (int *,void*) ;
 scalar_t__ BIO_printf (int *,char*,int,char*) ;

__attribute__((used)) static int i2r_ocsp_acutoff(const X509V3_EXT_METHOD *method, void *cutoff,
                            BIO *bp, int ind)
{
    if (BIO_printf(bp, "%*s", ind, "") <= 0)
        return 0;
    if (!ASN1_GENERALIZEDTIME_print(bp, cutoff))
        return 0;
    return 1;
}
