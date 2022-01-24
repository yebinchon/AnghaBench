#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * pending; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pending; } ;
struct TYPE_8__ {int /*<<< orphan*/  allocator; int /*<<< orphan*/  ctx; int /*<<< orphan*/  biom; int /*<<< orphan*/  ssl; TYPE_2__ encrypt; TYPE_1__ decrypt; } ;
typedef  TYPE_3__ serf_ssl_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static apr_status_t FUNC5(
    serf_ssl_context_t *ssl_ctx)
{
    /* If never had the pending buckets, don't try to free them. */
    if (ssl_ctx->decrypt.pending != NULL) {
        FUNC3(ssl_ctx->decrypt.pending);
    }
    if (ssl_ctx->encrypt.pending != NULL) {
        FUNC3(ssl_ctx->encrypt.pending);
    }

    /* SSL_free implicitly frees the underlying BIO. */
    FUNC1(ssl_ctx->ssl);
    FUNC2(ssl_ctx->biom);
    FUNC0(ssl_ctx->ctx);

    FUNC4(ssl_ctx->allocator, ssl_ctx);

    return APR_SUCCESS;
}