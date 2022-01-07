
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* digest; } ;
struct TYPE_5__ {int md_size; } ;
typedef TYPE_2__ EVP_MD_CTX ;
typedef int BIO ;


 TYPE_2__* BIO_get_data (int *) ;
 scalar_t__ EVP_DigestFinal_ex (TYPE_2__*,unsigned char*,unsigned int*) ;

__attribute__((used)) static int md_gets(BIO *bp, char *buf, int size)
{
    EVP_MD_CTX *ctx;
    unsigned int ret;

    ctx = BIO_get_data(bp);

    if (size < ctx->digest->md_size)
        return 0;

    if (EVP_DigestFinal_ex(ctx, (unsigned char *)buf, &ret) <= 0)
        return -1;

    return (int)ret;
}
