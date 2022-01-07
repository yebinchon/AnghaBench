
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_PKEY_DSA_SIGN ;
 int SSL_PKEY_ECC ;
 int SSL_PKEY_ED25519 ;
 int SSL_PKEY_ED448 ;
 int SSL_PKEY_GOST01 ;
 int SSL_PKEY_GOST12_256 ;
 int SSL_PKEY_GOST12_512 ;
 int SSL_PKEY_RSA ;
 int SSL_PKEY_RSA_PSS_SIGN ;
 int tls1_check_chain (int *,int *,int *,int *,int ) ;

void tls1_set_cert_validity(SSL *s)
{
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_RSA);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_RSA_PSS_SIGN);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_DSA_SIGN);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_ECC);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_GOST01);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_GOST12_256);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_GOST12_512);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_ED25519);
    tls1_check_chain(s, ((void*)0), ((void*)0), ((void*)0), SSL_PKEY_ED448);
}
