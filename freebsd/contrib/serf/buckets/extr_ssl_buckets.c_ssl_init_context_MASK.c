#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* read_baton; int /*<<< orphan*/  read; } ;
struct TYPE_11__ {TYPE_5__ databuf; void* status; void* pending; int /*<<< orphan*/ * stream; } ;
struct TYPE_10__ {TYPE_5__ databuf; void* status; void* pending; int /*<<< orphan*/ * stream_next; int /*<<< orphan*/ * stream; } ;
struct TYPE_12__ {TYPE_2__ decrypt; TYPE_1__ encrypt; int /*<<< orphan*/  ctx; int /*<<< orphan*/  ssl; int /*<<< orphan*/  bio; int /*<<< orphan*/  biom; int /*<<< orphan*/ * server_cert_chain_callback; int /*<<< orphan*/ * server_cert_callback; int /*<<< orphan*/ * cert_pw_callback; int /*<<< orphan*/ * cert_callback; void* fatal_err; void* pending_err; scalar_t__ cached_cert_pw; scalar_t__ cached_cert; int /*<<< orphan*/ * allocator; int /*<<< orphan*/  pool; scalar_t__ refcount; } ;
typedef  TYPE_3__ serf_ssl_context_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;

/* Variables and functions */
 void* APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SSL_OP_ALL ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  apps_ssl_info_callback ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  ssl_decrypt ; 
 int /*<<< orphan*/  ssl_encrypt ; 
 int /*<<< orphan*/  ssl_need_client_cert ; 
 int /*<<< orphan*/  validate_server_certificate ; 

__attribute__((used)) static serf_ssl_context_t *FUNC19(serf_bucket_alloc_t *allocator)
{
    serf_ssl_context_t *ssl_ctx;

    FUNC14();

    ssl_ctx = FUNC17(allocator, sizeof(*ssl_ctx));

    ssl_ctx->refcount = 0;
    ssl_ctx->pool = FUNC16(allocator);
    ssl_ctx->allocator = allocator;

    /* Use the best possible protocol version, but disable the broken SSLv2/3 */
    ssl_ctx->ctx = FUNC1(FUNC10());
    FUNC4(ssl_ctx->ctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);

    FUNC2(ssl_ctx->ctx, ssl_need_client_cert);
    ssl_ctx->cached_cert = 0;
    ssl_ctx->cached_cert_pw = 0;
    ssl_ctx->pending_err = APR_SUCCESS;
    ssl_ctx->fatal_err = APR_SUCCESS;

    ssl_ctx->cert_callback = NULL;
    ssl_ctx->cert_pw_callback = NULL;
    ssl_ctx->server_cert_callback = NULL;
    ssl_ctx->server_cert_chain_callback = NULL;

    FUNC5(ssl_ctx->ctx, SSL_VERIFY_PEER,
                       validate_server_certificate);
    FUNC4(ssl_ctx->ctx, SSL_OP_ALL);
    /* Disable SSL compression by default. */
    FUNC13(ssl_ctx);

    ssl_ctx->ssl = FUNC6(ssl_ctx->ctx);
    ssl_ctx->biom = FUNC11();
    ssl_ctx->bio = FUNC0(ssl_ctx->biom);
    FUNC12(ssl_ctx->bio, ssl_ctx);

    FUNC8(ssl_ctx->ssl, ssl_ctx->bio, ssl_ctx->bio);

    FUNC9(ssl_ctx->ssl);

    FUNC7(ssl_ctx->ssl, ssl_ctx);

#if SSL_VERBOSE
    SSL_CTX_set_info_callback(ssl_ctx->ctx, apps_ssl_info_callback);
#endif

    ssl_ctx->encrypt.stream = NULL;
    ssl_ctx->encrypt.stream_next = NULL;
    ssl_ctx->encrypt.pending = FUNC15(allocator);
    ssl_ctx->encrypt.status = APR_SUCCESS;
    FUNC18(&ssl_ctx->encrypt.databuf);
    ssl_ctx->encrypt.databuf.read = ssl_encrypt;
    ssl_ctx->encrypt.databuf.read_baton = ssl_ctx;

    ssl_ctx->decrypt.stream = NULL;
    ssl_ctx->decrypt.pending = FUNC15(allocator);
    ssl_ctx->decrypt.status = APR_SUCCESS;
    FUNC18(&ssl_ctx->decrypt.databuf);
    ssl_ctx->decrypt.databuf.read = ssl_decrypt;
    ssl_ctx->decrypt.databuf.read_baton = ssl_ctx;

    return ssl_ctx;
}