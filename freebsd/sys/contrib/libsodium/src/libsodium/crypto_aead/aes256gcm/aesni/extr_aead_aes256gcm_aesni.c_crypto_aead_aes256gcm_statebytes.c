
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_aead_aes256gcm_state ;



size_t
crypto_aead_aes256gcm_statebytes(void)
{
    return (sizeof(crypto_aead_aes256gcm_state) + (size_t) 15U) & ~(size_t) 15U;
}
