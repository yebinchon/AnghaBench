
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int escrypt_local_t ;


 int crypto_pwhash_scryptsalsa208sha256_STRBYTES ;
 int escrypt_free_local (int *) ;
 scalar_t__ escrypt_init_local (int *) ;
 int * escrypt_r (int *,int const*,size_t,int const*,int *,int) ;
 int memset (char*,int ,int) ;
 int sodium_memcmp (char*,char const*,int) ;
 int sodium_memzero (char*,int) ;
 int sodium_strnlen (char const*,int) ;

int
crypto_pwhash_scryptsalsa208sha256_str_verify(
    const char str[crypto_pwhash_scryptsalsa208sha256_STRBYTES],
    const char *const passwd, unsigned long long passwdlen)
{
    char wanted[crypto_pwhash_scryptsalsa208sha256_STRBYTES];
    escrypt_local_t escrypt_local;
    int ret = -1;

    if (sodium_strnlen(str, crypto_pwhash_scryptsalsa208sha256_STRBYTES) !=
        crypto_pwhash_scryptsalsa208sha256_STRBYTES - 1U) {
        return -1;
    }
    if (escrypt_init_local(&escrypt_local) != 0) {
        return -1;
    }
    memset(wanted, 0, sizeof wanted);
    if (escrypt_r(&escrypt_local, (const uint8_t *) passwd, (size_t) passwdlen,
                  (const uint8_t *) str, (uint8_t *) wanted,
                  sizeof wanted) == ((void*)0)) {
        escrypt_free_local(&escrypt_local);
        return -1;
    }
    escrypt_free_local(&escrypt_local);
    ret = sodium_memcmp(wanted, str, sizeof wanted);
    sodium_memzero(wanted, sizeof wanted);

    return ret;
}
