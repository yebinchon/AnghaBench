
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int client_ca_names; } ;
typedef TYPE_1__ SSL_CTX ;


 int add_ca_name (int *,int *) ;

int SSL_CTX_add_client_CA(SSL_CTX *ctx, X509 *x)
{
    return add_ca_name(&ctx->client_ca_names, x);
}
