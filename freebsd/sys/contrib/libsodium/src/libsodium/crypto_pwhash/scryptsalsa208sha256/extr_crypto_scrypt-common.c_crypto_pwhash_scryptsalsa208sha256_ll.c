
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int escrypt_local_t ;
typedef int (* escrypt_kdf_t ) (int *,int const*,size_t,int const*,size_t,int ,int ,int ,int *,size_t) ;


 scalar_t__ escrypt_free_local (int *) ;
 scalar_t__ escrypt_init_local (int *) ;
 int escrypt_kdf_nosse (int *,int const*,size_t,int const*,size_t,int ,int ,int ,int *,size_t) ;
 int escrypt_kdf_sse (int *,int const*,size_t,int const*,size_t,int ,int ,int ,int *,size_t) ;
 scalar_t__ sodium_runtime_has_sse2 () ;

int
crypto_pwhash_scryptsalsa208sha256_ll(const uint8_t *passwd, size_t passwdlen,
                                      const uint8_t *salt, size_t saltlen,
                                      uint64_t N, uint32_t r, uint32_t p,
                                      uint8_t *buf, size_t buflen)
{
    escrypt_kdf_t escrypt_kdf;
    escrypt_local_t local;
    int retval;

    if (escrypt_init_local(&local)) {
        return -1;
    }




    escrypt_kdf = escrypt_kdf_nosse;

    retval = escrypt_kdf(&local, passwd, passwdlen, salt, saltlen, N, r, p, buf,
                         buflen);
    if (escrypt_free_local(&local)) {
        return -1;
    }
    return retval;
}
