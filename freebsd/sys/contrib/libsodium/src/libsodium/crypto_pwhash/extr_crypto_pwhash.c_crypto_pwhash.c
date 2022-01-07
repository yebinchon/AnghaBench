
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;


 int crypto_pwhash_argon2i (unsigned char* const,unsigned long long,char const* const,unsigned long long,unsigned char const* const,unsigned long long,size_t,int) ;
 int crypto_pwhash_argon2id (unsigned char* const,unsigned long long,char const* const,unsigned long long,unsigned char const* const,unsigned long long,size_t,int) ;
 int errno ;

int
crypto_pwhash(unsigned char * const out, unsigned long long outlen,
              const char * const passwd, unsigned long long passwdlen,
              const unsigned char * const salt,
              unsigned long long opslimit, size_t memlimit, int alg)
{
    switch (alg) {
    case 129:
        return crypto_pwhash_argon2i(out, outlen, passwd, passwdlen, salt,
                                     opslimit, memlimit, alg);
    case 128:
        return crypto_pwhash_argon2id(out, outlen, passwd, passwdlen, salt,
                                      opslimit, memlimit, alg);
    default:
        errno = EINVAL;
        return -1;
    }
}
