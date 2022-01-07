
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;
typedef int SSL_CIPHER ;


 long SSL3_CK_CIPHERSUITE_FLAG ;
 int const* ssl3_get_cipher_by_id (long) ;

const SSL_CIPHER *ssl3_get_cipher_by_char(const unsigned char *p)
{
    return ssl3_get_cipher_by_id(SSL3_CK_CIPHERSUITE_FLAG
                                 | ((uint32_t)p[0] << 8L)
                                 | (uint32_t)p[1]);
}
