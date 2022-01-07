
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ serialNumber; int issuer; } ;
struct TYPE_7__ {TYPE_2__ cert_info; } ;
typedef TYPE_3__ X509 ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,unsigned char*,unsigned long) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_md5 () ;
 int OPENSSL_free (char*) ;
 char* X509_NAME_oneline (int ,int *,int ) ;
 unsigned long strlen (char*) ;

unsigned long X509_issuer_and_serial_hash(X509 *a)
{
    unsigned long ret = 0;
    EVP_MD_CTX *ctx = EVP_MD_CTX_new();
    unsigned char md[16];
    char *f;

    if (ctx == ((void*)0))
        goto err;
    f = X509_NAME_oneline(a->cert_info.issuer, ((void*)0), 0);
    if (!EVP_DigestInit_ex(ctx, EVP_md5(), ((void*)0)))
        goto err;
    if (!EVP_DigestUpdate(ctx, (unsigned char *)f, strlen(f)))
        goto err;
    OPENSSL_free(f);
    if (!EVP_DigestUpdate
        (ctx, (unsigned char *)a->cert_info.serialNumber.data,
         (unsigned long)a->cert_info.serialNumber.length))
        goto err;
    if (!EVP_DigestFinal_ex(ctx, &(md[0]), ((void*)0)))
        goto err;
    ret = (((unsigned long)md[0]) | ((unsigned long)md[1] << 8L) |
           ((unsigned long)md[2] << 16L) | ((unsigned long)md[3] << 24L)
        ) & 0xffffffffL;
 err:
    EVP_MD_CTX_free(ctx);
    return ret;
}
