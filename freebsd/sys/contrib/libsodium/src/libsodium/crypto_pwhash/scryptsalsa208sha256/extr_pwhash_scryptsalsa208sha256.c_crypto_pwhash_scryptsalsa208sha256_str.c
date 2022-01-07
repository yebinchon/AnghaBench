
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int escrypt_local_t ;


 int COMPILER_ASSERT (int) ;
 int EFBIG ;
 int EINVAL ;
 int SETTING_SIZE (int) ;
 unsigned long long crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX ;
 unsigned long long crypto_pwhash_scryptsalsa208sha256_PASSWD_MIN ;
 int crypto_pwhash_scryptsalsa208sha256_STRBYTES ;
 int crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED ;
 int crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES ;
 int crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES ;
 int errno ;
 int escrypt_free_local (int *) ;
 int * escrypt_gensalt_r (int ,int ,int ,int *,int,int *,int) ;
 scalar_t__ escrypt_init_local (int *) ;
 int * escrypt_r (int *,int const*,size_t,int const*,int *,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ pickparams (unsigned long long,size_t,int *,int *,int *) ;
 int randombytes_buf (int *,int) ;

int
crypto_pwhash_scryptsalsa208sha256_str(
    char out[crypto_pwhash_scryptsalsa208sha256_STRBYTES],
    const char *const passwd, unsigned long long passwdlen,
    unsigned long long opslimit, size_t memlimit)
{
    uint8_t salt[crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES];
    char setting[crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES + 1U];
    escrypt_local_t escrypt_local;
    uint32_t N_log2;
    uint32_t p;
    uint32_t r;

    memset(out, 0, crypto_pwhash_scryptsalsa208sha256_STRBYTES);
    if (passwdlen > crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX) {
        errno = EFBIG;
        return -1;
    }
    if (passwdlen < crypto_pwhash_scryptsalsa208sha256_PASSWD_MIN ||
        pickparams(opslimit, memlimit, &N_log2, &p, &r) != 0) {
        errno = EINVAL;
        return -1;
    }
    randombytes_buf(salt, sizeof salt);
    if (escrypt_gensalt_r(N_log2, r, p, salt, sizeof salt, (uint8_t *) setting,
                          sizeof setting) == ((void*)0)) {
        errno = EINVAL;
        return -1;
    }
    if (escrypt_init_local(&escrypt_local) != 0) {
        return -1;
    }
    if (escrypt_r(&escrypt_local, (const uint8_t *) passwd, (size_t) passwdlen,
                  (const uint8_t *) setting, (uint8_t *) out,
                  crypto_pwhash_scryptsalsa208sha256_STRBYTES) == ((void*)0)) {

        escrypt_free_local(&escrypt_local);
        errno = EINVAL;
        return -1;

    }
    escrypt_free_local(&escrypt_local);

    COMPILER_ASSERT(
        SETTING_SIZE(crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES) ==
        crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES);
    COMPILER_ASSERT(
        crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES + 1U +
            crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED + 1U ==
        crypto_pwhash_scryptsalsa208sha256_STRBYTES);

    return 0;
}
