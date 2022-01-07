
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY_METHOD ;


 int const openssl_ec_key_method ;

const EC_KEY_METHOD *EC_KEY_OpenSSL(void)
{
    return &openssl_ec_key_method;
}
