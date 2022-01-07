
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keylabel ;
typedef int SSL ;
typedef int EVP_MD ;


 int tls13_hkdf_expand (int *,int const*,unsigned char const*,unsigned char const*,int,int *,int ,unsigned char*,size_t,int) ;

int tls13_derive_key(SSL *s, const EVP_MD *md, const unsigned char *secret,
                     unsigned char *key, size_t keylen)
{



  static const unsigned char keylabel[] = "key";


    return tls13_hkdf_expand(s, md, secret, keylabel, sizeof(keylabel) - 1,
                             ((void*)0), 0, key, keylen, 1);
}
