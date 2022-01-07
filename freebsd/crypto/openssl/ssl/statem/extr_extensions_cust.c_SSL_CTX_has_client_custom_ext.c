
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cert; } ;
struct TYPE_4__ {int custext; } ;
typedef TYPE_2__ SSL_CTX ;


 int ENDPOINT_CLIENT ;
 int * custom_ext_find (int *,int ,unsigned int,int *) ;

int SSL_CTX_has_client_custom_ext(const SSL_CTX *ctx, unsigned int ext_type)
{
    return custom_ext_find(&ctx->cert->custext, ENDPOINT_CLIENT, ext_type,
                           ((void*)0)) != ((void*)0);
}
