
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_sign_state ;



size_t
crypto_sign_statebytes(void)
{
    return sizeof(crypto_sign_state);
}
