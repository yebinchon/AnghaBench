
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int ENGINE ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_mac_key (int *,unsigned char const*,int) ;
 scalar_t__ EVP_PKEY_keygen (int *,int **) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;

EVP_PKEY *EVP_PKEY_new_mac_key(int type, ENGINE *e,
                               const unsigned char *key, int keylen)
{
    EVP_PKEY_CTX *mac_ctx = ((void*)0);
    EVP_PKEY *mac_key = ((void*)0);
    mac_ctx = EVP_PKEY_CTX_new_id(type, e);
    if (!mac_ctx)
        return ((void*)0);
    if (EVP_PKEY_keygen_init(mac_ctx) <= 0)
        goto merr;
    if (EVP_PKEY_CTX_set_mac_key(mac_ctx, key, keylen) <= 0)
        goto merr;
    if (EVP_PKEY_keygen(mac_ctx, &mac_key) <= 0)
        goto merr;
 merr:
    EVP_PKEY_CTX_free(mac_ctx);
    return mac_key;
}
