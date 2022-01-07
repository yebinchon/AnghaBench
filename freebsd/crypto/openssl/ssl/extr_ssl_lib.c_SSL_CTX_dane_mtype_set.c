
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int dane; } ;
typedef TYPE_1__ SSL_CTX ;
typedef int EVP_MD ;


 int dane_mtype_set (int *,int const*,int ,int ) ;

int SSL_CTX_dane_mtype_set(SSL_CTX *ctx, const EVP_MD *md, uint8_t mtype,
                           uint8_t ord)
{
    return dane_mtype_set(&ctx->dane, md, mtype, ord);
}
