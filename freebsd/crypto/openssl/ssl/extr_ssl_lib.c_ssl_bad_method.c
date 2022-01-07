
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_METHOD ;


 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int SSL_F_SSL_BAD_METHOD ;
 int SSLerr (int ,int ) ;

const SSL_METHOD *ssl_bad_method(int ver)
{
    SSLerr(SSL_F_SSL_BAD_METHOD, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
    return ((void*)0);
}
