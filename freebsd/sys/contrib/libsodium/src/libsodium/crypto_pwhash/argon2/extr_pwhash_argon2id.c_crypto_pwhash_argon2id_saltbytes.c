
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARGON2_MAX_SALT_LENGTH ;
 scalar_t__ ARGON2_MIN_SALT_LENGTH ;
 int COMPILER_ASSERT (int) ;
 scalar_t__ crypto_pwhash_argon2id_SALTBYTES ;

size_t
crypto_pwhash_argon2id_saltbytes(void)
{
    COMPILER_ASSERT(crypto_pwhash_argon2id_SALTBYTES >= ARGON2_MIN_SALT_LENGTH);
    COMPILER_ASSERT(crypto_pwhash_argon2id_SALTBYTES <= ARGON2_MAX_SALT_LENGTH);
    return crypto_pwhash_argon2id_SALTBYTES;
}
