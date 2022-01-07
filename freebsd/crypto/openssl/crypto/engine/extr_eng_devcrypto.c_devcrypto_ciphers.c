
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;
typedef int ENGINE ;


 int * get_cipher_method (int) ;
 int get_cipher_nids (int const**) ;

__attribute__((used)) static int devcrypto_ciphers(ENGINE *e, const EVP_CIPHER **cipher,
                             const int **nids, int nid)
{
    if (cipher == ((void*)0))
        return get_cipher_nids(nids);

    *cipher = get_cipher_method(nid);

    return *cipher != ((void*)0);
}
