
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* read_baton; int read; } ;
struct TYPE_11__ {TYPE_5__ databuf; void* status; void* pending; int * stream; } ;
struct TYPE_10__ {TYPE_5__ databuf; void* status; void* pending; int * stream_next; int * stream; } ;
struct TYPE_12__ {TYPE_2__ decrypt; TYPE_1__ encrypt; int ctx; int ssl; int bio; int biom; int * server_cert_chain_callback; int * server_cert_callback; int * cert_pw_callback; int * cert_callback; void* fatal_err; void* pending_err; scalar_t__ cached_cert_pw; scalar_t__ cached_cert; int * allocator; int pool; scalar_t__ refcount; } ;
typedef TYPE_3__ serf_ssl_context_t ;
typedef int serf_bucket_alloc_t ;


 void* APR_SUCCESS ;
 int BIO_new (int ) ;
 int SSL_CTX_new (int ) ;
 int SSL_CTX_set_client_cert_cb (int ,int ) ;
 int SSL_CTX_set_info_callback (int ,int ) ;
 int SSL_CTX_set_options (int ,int) ;
 int SSL_CTX_set_verify (int ,int ,int ) ;
 int SSL_OP_ALL ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_PEER ;
 int SSL_new (int ) ;
 int SSL_set_app_data (int ,TYPE_3__*) ;
 int SSL_set_bio (int ,int ,int ) ;
 int SSL_set_connect_state (int ) ;
 int SSLv23_client_method () ;
 int apps_ssl_info_callback ;
 int bio_meth_bucket_new () ;
 int bio_set_data (int ,TYPE_3__*) ;
 int disable_compression (TYPE_3__*) ;
 int init_ssl_libraries () ;
 void* serf_bucket_aggregate_create (int *) ;
 int serf_bucket_allocator_get_pool (int *) ;
 TYPE_3__* serf_bucket_mem_alloc (int *,int) ;
 int serf_databuf_init (TYPE_5__*) ;
 int ssl_decrypt ;
 int ssl_encrypt ;
 int ssl_need_client_cert ;
 int validate_server_certificate ;

__attribute__((used)) static serf_ssl_context_t *ssl_init_context(serf_bucket_alloc_t *allocator)
{
    serf_ssl_context_t *ssl_ctx;

    init_ssl_libraries();

    ssl_ctx = serf_bucket_mem_alloc(allocator, sizeof(*ssl_ctx));

    ssl_ctx->refcount = 0;
    ssl_ctx->pool = serf_bucket_allocator_get_pool(allocator);
    ssl_ctx->allocator = allocator;


    ssl_ctx->ctx = SSL_CTX_new(SSLv23_client_method());
    SSL_CTX_set_options(ssl_ctx->ctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);

    SSL_CTX_set_client_cert_cb(ssl_ctx->ctx, ssl_need_client_cert);
    ssl_ctx->cached_cert = 0;
    ssl_ctx->cached_cert_pw = 0;
    ssl_ctx->pending_err = APR_SUCCESS;
    ssl_ctx->fatal_err = APR_SUCCESS;

    ssl_ctx->cert_callback = ((void*)0);
    ssl_ctx->cert_pw_callback = ((void*)0);
    ssl_ctx->server_cert_callback = ((void*)0);
    ssl_ctx->server_cert_chain_callback = ((void*)0);

    SSL_CTX_set_verify(ssl_ctx->ctx, SSL_VERIFY_PEER,
                       validate_server_certificate);
    SSL_CTX_set_options(ssl_ctx->ctx, SSL_OP_ALL);

    disable_compression(ssl_ctx);

    ssl_ctx->ssl = SSL_new(ssl_ctx->ctx);
    ssl_ctx->biom = bio_meth_bucket_new();
    ssl_ctx->bio = BIO_new(ssl_ctx->biom);
    bio_set_data(ssl_ctx->bio, ssl_ctx);

    SSL_set_bio(ssl_ctx->ssl, ssl_ctx->bio, ssl_ctx->bio);

    SSL_set_connect_state(ssl_ctx->ssl);

    SSL_set_app_data(ssl_ctx->ssl, ssl_ctx);





    ssl_ctx->encrypt.stream = ((void*)0);
    ssl_ctx->encrypt.stream_next = ((void*)0);
    ssl_ctx->encrypt.pending = serf_bucket_aggregate_create(allocator);
    ssl_ctx->encrypt.status = APR_SUCCESS;
    serf_databuf_init(&ssl_ctx->encrypt.databuf);
    ssl_ctx->encrypt.databuf.read = ssl_encrypt;
    ssl_ctx->encrypt.databuf.read_baton = ssl_ctx;

    ssl_ctx->decrypt.stream = ((void*)0);
    ssl_ctx->decrypt.pending = serf_bucket_aggregate_create(allocator);
    ssl_ctx->decrypt.status = APR_SUCCESS;
    serf_databuf_init(&ssl_ctx->decrypt.databuf);
    ssl_ctx->decrypt.databuf.read = ssl_decrypt;
    ssl_ctx->decrypt.databuf.read_baton = ssl_ctx;

    return ssl_ctx;
}
