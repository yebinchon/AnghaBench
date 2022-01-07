
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t crypto_kx_PUBLICKEYBYTES ;

size_t
crypto_kx_publickeybytes(void)
{
    return crypto_kx_PUBLICKEYBYTES;
}
