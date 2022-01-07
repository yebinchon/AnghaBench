
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int engine; scalar_t__ cipher_data; TYPE_1__* cipher; } ;
struct TYPE_6__ {scalar_t__ ctx_size; int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EVP_CIPHER_CTX ;


 int ENGINE_finish (int ) ;
 int OPENSSL_cleanse (scalar_t__,scalar_t__) ;
 int OPENSSL_free (scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (TYPE_2__*) ;

int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *c)
{
    if (c == ((void*)0))
        return 1;
    if (c->cipher != ((void*)0)) {
        if (c->cipher->cleanup && !c->cipher->cleanup(c))
            return 0;

        if (c->cipher_data && c->cipher->ctx_size)
            OPENSSL_cleanse(c->cipher_data, c->cipher->ctx_size);
    }
    OPENSSL_free(c->cipher_data);

    ENGINE_finish(c->engine);

    memset(c, 0, sizeof(*c));
    return 1;
}
