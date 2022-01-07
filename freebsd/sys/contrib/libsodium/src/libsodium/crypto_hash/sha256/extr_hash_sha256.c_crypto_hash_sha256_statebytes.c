
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_hash_sha256_state ;



size_t
crypto_hash_sha256_statebytes(void)
{
    return sizeof(crypto_hash_sha256_state);
}
