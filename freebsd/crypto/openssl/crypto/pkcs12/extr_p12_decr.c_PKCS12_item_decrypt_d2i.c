
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_3__ {int length; int data; } ;
typedef int FILE ;
typedef TYPE_1__ ASN1_OCTET_STRING ;
typedef int ASN1_ITEM ;


 void* ASN1_item_d2i (int *,unsigned char const**,int,int const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 int PKCS12_F_PKCS12_ITEM_DECRYPT_D2I ;
 int PKCS12_R_DECODE_ERROR ;
 int PKCS12_R_PKCS12_PBE_CRYPT_ERROR ;
 int PKCS12_pbe_crypt (int const*,char const*,int,int ,int ,unsigned char**,int*,int ) ;
 int PKCS12err (int ,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (unsigned char const*,int,int,int *) ;
 int sprintf (char*,char*,int ) ;

void *PKCS12_item_decrypt_d2i(const X509_ALGOR *algor, const ASN1_ITEM *it,
                              const char *pass, int passlen,
                              const ASN1_OCTET_STRING *oct, int zbuf)
{
    unsigned char *out;
    const unsigned char *p;
    void *ret;
    int outlen;

    if (!PKCS12_pbe_crypt(algor, pass, passlen, oct->data, oct->length,
                          &out, &outlen, 0)) {
        PKCS12err(PKCS12_F_PKCS12_ITEM_DECRYPT_D2I,
                  PKCS12_R_PKCS12_PBE_CRYPT_ERROR);
        return ((void*)0);
    }
    p = out;
    ret = ASN1_item_d2i(((void*)0), &p, outlen, it);
    if (zbuf)
        OPENSSL_cleanse(out, outlen);
    if (!ret)
        PKCS12err(PKCS12_F_PKCS12_ITEM_DECRYPT_D2I, PKCS12_R_DECODE_ERROR);
    OPENSSL_free(out);
    return ret;
}
