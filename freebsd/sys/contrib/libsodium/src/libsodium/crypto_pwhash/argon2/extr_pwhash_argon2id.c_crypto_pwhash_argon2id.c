
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ARGON2_OK ;
 int EFBIG ;
 int EINVAL ;
 int argon2id_hash_raw (int ,int ,int ,char const* const,size_t,unsigned char const* const,size_t,unsigned char* const,size_t) ;

 unsigned long long crypto_pwhash_argon2id_BYTES_MAX ;
 unsigned long long crypto_pwhash_argon2id_BYTES_MIN ;
 size_t crypto_pwhash_argon2id_MEMLIMIT_MAX ;
 size_t crypto_pwhash_argon2id_MEMLIMIT_MIN ;
 unsigned long long crypto_pwhash_argon2id_OPSLIMIT_MAX ;
 unsigned long long crypto_pwhash_argon2id_OPSLIMIT_MIN ;
 unsigned long long crypto_pwhash_argon2id_PASSWD_MAX ;
 unsigned long long crypto_pwhash_argon2id_PASSWD_MIN ;
 int crypto_pwhash_argon2id_SALTBYTES ;
 int errno ;
 int memset (unsigned char* const,int ,unsigned long long) ;

int
crypto_pwhash_argon2id(unsigned char *const out, unsigned long long outlen,
                       const char *const passwd, unsigned long long passwdlen,
                       const unsigned char *const salt,
                       unsigned long long opslimit, size_t memlimit, int alg)
{
    memset(out, 0, outlen);
    if (outlen > crypto_pwhash_argon2id_BYTES_MAX) {
        errno = EFBIG;
        return -1;
    }
    if (outlen < crypto_pwhash_argon2id_BYTES_MIN) {
        errno = EINVAL;
        return -1;
    }
    if (passwdlen > crypto_pwhash_argon2id_PASSWD_MAX ||
        opslimit > crypto_pwhash_argon2id_OPSLIMIT_MAX ||
        memlimit > crypto_pwhash_argon2id_MEMLIMIT_MAX) {
        errno = EFBIG;
        return -1;
    }
    if (passwdlen < crypto_pwhash_argon2id_PASSWD_MIN ||
        opslimit < crypto_pwhash_argon2id_OPSLIMIT_MIN ||
        memlimit < crypto_pwhash_argon2id_MEMLIMIT_MIN) {
        errno = EINVAL;
        return -1;
    }
    switch (alg) {
    case 128:
        if (argon2id_hash_raw((uint32_t) opslimit, (uint32_t) (memlimit / 1024U),
                              (uint32_t) 1U, passwd, (size_t) passwdlen, salt,
                              (size_t) crypto_pwhash_argon2id_SALTBYTES, out,
                              (size_t) outlen) != ARGON2_OK) {
            return -1;
        }
        return 0;
    default:
        errno = EINVAL;
        return -1;
    }
}
