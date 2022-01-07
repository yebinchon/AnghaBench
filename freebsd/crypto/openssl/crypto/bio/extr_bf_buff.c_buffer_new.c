
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int init; char* ptr; scalar_t__ flags; } ;
struct TYPE_6__ {struct TYPE_6__* ibuf; int * obuf; void* obuf_size; void* ibuf_size; } ;
typedef TYPE_1__ BIO_F_BUFFER_CTX ;
typedef TYPE_2__ BIO ;


 void* DEFAULT_BUFFER_SIZE ;
 int OPENSSL_free (TYPE_1__*) ;
 void* OPENSSL_malloc (void*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int buffer_new(BIO *bi)
{
    BIO_F_BUFFER_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0))
        return 0;
    ctx->ibuf_size = DEFAULT_BUFFER_SIZE;
    ctx->ibuf = OPENSSL_malloc(DEFAULT_BUFFER_SIZE);
    if (ctx->ibuf == ((void*)0)) {
        OPENSSL_free(ctx);
        return 0;
    }
    ctx->obuf_size = DEFAULT_BUFFER_SIZE;
    ctx->obuf = OPENSSL_malloc(DEFAULT_BUFFER_SIZE);
    if (ctx->obuf == ((void*)0)) {
        OPENSSL_free(ctx->ibuf);
        OPENSSL_free(ctx);
        return 0;
    }

    bi->init = 1;
    bi->ptr = (char *)ctx;
    bi->flags = 0;
    return 1;
}
