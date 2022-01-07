
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* derbuf; unsigned char** boundary; int it; int val; } ;
typedef TYPE_1__ NDEF_SUPPORT ;
typedef int BIO ;


 int ASN1_F_NDEF_PREFIX ;
 int ASN1_item_ndef_i2d (int ,unsigned char**,int ) ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (int) ;

__attribute__((used)) static int ndef_prefix(BIO *b, unsigned char **pbuf, int *plen, void *parg)
{
    NDEF_SUPPORT *ndef_aux;
    unsigned char *p;
    int derlen;

    if (!parg)
        return 0;

    ndef_aux = *(NDEF_SUPPORT **)parg;

    derlen = ASN1_item_ndef_i2d(ndef_aux->val, ((void*)0), ndef_aux->it);
    if ((p = OPENSSL_malloc(derlen)) == ((void*)0)) {
        ASN1err(ASN1_F_NDEF_PREFIX, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ndef_aux->derbuf = p;
    *pbuf = p;
    derlen = ASN1_item_ndef_i2d(ndef_aux->val, &p, ndef_aux->it);

    if (!*ndef_aux->boundary)
        return 0;

    *plen = *ndef_aux->boundary - *pbuf;

    return 1;
}
