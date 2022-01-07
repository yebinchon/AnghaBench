
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_PCTX ;


 int ASN1_F_ASN1_PCTX_NEW ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

ASN1_PCTX *ASN1_PCTX_new(void)
{
    ASN1_PCTX *ret;

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_PCTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    return ret;
}
