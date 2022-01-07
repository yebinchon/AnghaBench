
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int OBJ_NAME_TYPE_MD_METH ;
 scalar_t__ OBJ_NAME_get (char const*,int ) ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_init_crypto (int ,int *) ;

const EVP_MD *EVP_get_digestbyname(const char *name)
{
    const EVP_MD *cp;

    if (!OPENSSL_init_crypto(OPENSSL_INIT_ADD_ALL_DIGESTS, ((void*)0)))
        return ((void*)0);

    cp = (const EVP_MD *)OBJ_NAME_get(name, OBJ_NAME_TYPE_MD_METH);
    return cp;
}
