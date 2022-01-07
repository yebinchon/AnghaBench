
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_use_serverinfo_ex (int *,int ,unsigned char const*,size_t) ;
 int SSL_SERVERINFOV1 ;

int SSL_CTX_use_serverinfo(SSL_CTX *ctx, const unsigned char *serverinfo,
                           size_t serverinfo_length)
{
    return SSL_CTX_use_serverinfo_ex(ctx, SSL_SERVERINFOV1, serverinfo,
                                     serverinfo_length);
}
