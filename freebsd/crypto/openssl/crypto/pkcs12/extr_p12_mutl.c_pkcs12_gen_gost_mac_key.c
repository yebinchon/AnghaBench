
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef int EVP_MD ;


 int OPENSSL_cleanse (unsigned char*,int) ;
 int PKCS5_PBKDF2_HMAC (char const*,int,unsigned char const*,int,int,int const*,int,unsigned char*) ;
 int TK26_MAC_KEY_LEN ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int pkcs12_gen_gost_mac_key(const char *pass, int passlen,
                                   const unsigned char *salt, int saltlen,
                                   int iter, int keylen, unsigned char *key,
                                   const EVP_MD *digest)
{
    unsigned char out[96];

    if (keylen != TK26_MAC_KEY_LEN) {
        return 0;
    }

    if (!PKCS5_PBKDF2_HMAC(pass, passlen, salt, saltlen, iter,
                           digest, sizeof(out), out)) {
        return 0;
    }
    memcpy(key, out + sizeof(out) - TK26_MAC_KEY_LEN, TK26_MAC_KEY_LEN);
    OPENSSL_cleanse(out, sizeof(out));
    return 1;
}
