
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md; } ;
typedef TYPE_1__ HMAC_CTX ;


 int EVP_MD_size (int ) ;

size_t HMAC_size(const HMAC_CTX *ctx)
{
    int size = EVP_MD_size((ctx)->md);

    return (size < 0) ? 0 : size;
}
