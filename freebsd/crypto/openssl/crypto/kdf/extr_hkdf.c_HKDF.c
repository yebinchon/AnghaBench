
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prk ;
typedef int EVP_MD ;


 int EVP_MAX_MD_SIZE ;
 unsigned char* HKDF_Expand (int const*,unsigned char*,size_t,unsigned char const*,size_t,unsigned char*,size_t) ;
 int HKDF_Extract (int const*,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,size_t*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;

__attribute__((used)) static unsigned char *HKDF(const EVP_MD *evp_md,
                           const unsigned char *salt, size_t salt_len,
                           const unsigned char *key, size_t key_len,
                           const unsigned char *info, size_t info_len,
                           unsigned char *okm, size_t okm_len)
{
    unsigned char prk[EVP_MAX_MD_SIZE];
    unsigned char *ret;
    size_t prk_len;

    if (!HKDF_Extract(evp_md, salt, salt_len, key, key_len, prk, &prk_len))
        return ((void*)0);

    ret = HKDF_Expand(evp_md, prk, prk_len, info, info_len, okm, okm_len);
    OPENSSL_cleanse(prk, sizeof(prk));

    return ret;
}
