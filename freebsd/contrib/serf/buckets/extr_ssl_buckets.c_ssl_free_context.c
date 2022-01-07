
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * pending; } ;
struct TYPE_6__ {int * pending; } ;
struct TYPE_8__ {int allocator; int ctx; int biom; int ssl; TYPE_2__ encrypt; TYPE_1__ decrypt; } ;
typedef TYPE_3__ serf_ssl_context_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int SSL_CTX_free (int ) ;
 int SSL_free (int ) ;
 int bio_meth_free (int ) ;
 int serf_bucket_destroy (int *) ;
 int serf_bucket_mem_free (int ,TYPE_3__*) ;

__attribute__((used)) static apr_status_t ssl_free_context(
    serf_ssl_context_t *ssl_ctx)
{

    if (ssl_ctx->decrypt.pending != ((void*)0)) {
        serf_bucket_destroy(ssl_ctx->decrypt.pending);
    }
    if (ssl_ctx->encrypt.pending != ((void*)0)) {
        serf_bucket_destroy(ssl_ctx->encrypt.pending);
    }


    SSL_free(ssl_ctx->ssl);
    bio_meth_free(ssl_ctx->biom);
    SSL_CTX_free(ssl_ctx->ctx);

    serf_bucket_mem_free(ssl_ctx->allocator, ssl_ctx);

    return APR_SUCCESS;
}
