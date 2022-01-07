
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tlsv1_server {int test_flags; } ;


 int TLS_BREAK_SRV_KEY_X_HASH ;
 int TLS_BREAK_SRV_KEY_X_SIGNATURE ;
 int TLS_DHE_NON_PRIME ;
 int TLS_DHE_PRIME_15 ;
 int TLS_DHE_PRIME_511B ;
 int TLS_DHE_PRIME_58B ;
 int TLS_DHE_PRIME_767B ;
 scalar_t__ TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA ;
 scalar_t__ TLS_DHE_RSA_WITH_AES_128_CBC_SHA ;
 scalar_t__ TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 ;
 scalar_t__ TLS_DHE_RSA_WITH_AES_256_CBC_SHA ;
 scalar_t__ TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 ;

__attribute__((used)) static int testing_cipher_suite_filter(struct tlsv1_server *conn, u16 suite)
{
 return 0;
}
