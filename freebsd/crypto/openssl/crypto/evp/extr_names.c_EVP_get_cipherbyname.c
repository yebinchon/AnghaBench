
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int OBJ_NAME_TYPE_CIPHER_METH ;
 scalar_t__ OBJ_NAME_get (char const*,int ) ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_init_crypto (int ,int *) ;

const EVP_CIPHER *EVP_get_cipherbyname(const char *name)
{
    const EVP_CIPHER *cp;

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_CIPHERS, ((void*)0)))
        return ((void*)0);

    cp = (const EVP_CIPHER *)OBJ_NAME_get(name, OBJ_NAME_TYPE_CIPHER_METH);
    return cp;
}
