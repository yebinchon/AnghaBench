#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ serf_ssl_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  ssl_cert; } ;
typedef  TYPE_2__ serf_ssl_certificate_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  X509_STORE ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/  SERF_ERROR_SSL_CERT_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

apr_status_t FUNC2(
    serf_ssl_context_t *ssl_ctx,
    serf_ssl_certificate_t *cert)
{
    X509_STORE *store = FUNC0(ssl_ctx->ctx);

    int result = FUNC1(store, cert->ssl_cert);

    return result ? APR_SUCCESS : SERF_ERROR_SSL_CERT_FAILED;
}