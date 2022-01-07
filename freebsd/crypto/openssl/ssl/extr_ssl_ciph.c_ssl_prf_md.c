
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int EVP_MD ;


 int TLS1_PRF_DGST_SHIFT ;
 int ssl_get_algorithm2 (int *) ;
 int const* ssl_md (int) ;

const EVP_MD *ssl_prf_md(SSL *s)
{
    return ssl_md(ssl_get_algorithm2(s) >> TLS1_PRF_DGST_SHIFT);
}
