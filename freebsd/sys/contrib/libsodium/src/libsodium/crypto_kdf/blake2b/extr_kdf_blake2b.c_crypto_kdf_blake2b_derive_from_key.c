
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EINVAL ;
 int STORE64_LE (unsigned char*,int ) ;
 int crypto_generichash_blake2b_PERSONALBYTES ;
 int crypto_generichash_blake2b_SALTBYTES ;
 int crypto_generichash_blake2b_salt_personal (unsigned char*,size_t,int *,int ,unsigned char const*,int ,unsigned char*,unsigned char*) ;
 size_t crypto_kdf_blake2b_BYTES_MAX ;
 size_t crypto_kdf_blake2b_BYTES_MIN ;
 int crypto_kdf_blake2b_CONTEXTBYTES ;
 int crypto_kdf_blake2b_KEYBYTES ;
 int errno ;
 int memcpy (unsigned char*,char const*,int) ;
 int memset (unsigned char*,int ,int) ;

int crypto_kdf_blake2b_derive_from_key(unsigned char *subkey, size_t subkey_len,
                                       uint64_t subkey_id,
                                       const char ctx[crypto_kdf_blake2b_CONTEXTBYTES],
                                       const unsigned char key[crypto_kdf_blake2b_KEYBYTES])
{
    unsigned char ctx_padded[crypto_generichash_blake2b_PERSONALBYTES];
    unsigned char salt[crypto_generichash_blake2b_SALTBYTES];

    memcpy(ctx_padded, ctx, crypto_kdf_blake2b_CONTEXTBYTES);
    memset(ctx_padded + crypto_kdf_blake2b_CONTEXTBYTES, 0, sizeof ctx_padded - crypto_kdf_blake2b_CONTEXTBYTES);
    STORE64_LE(salt, subkey_id);
    memset(salt + 8, 0, (sizeof salt) - 8);
    if (subkey_len < crypto_kdf_blake2b_BYTES_MIN ||
        subkey_len > crypto_kdf_blake2b_BYTES_MAX) {
        errno = EINVAL;
        return -1;
    }
    return crypto_generichash_blake2b_salt_personal(subkey, subkey_len,
                                                    ((void*)0), 0,
                                                    key, crypto_kdf_blake2b_KEYBYTES,
                                                    salt, ctx_padded);
}
