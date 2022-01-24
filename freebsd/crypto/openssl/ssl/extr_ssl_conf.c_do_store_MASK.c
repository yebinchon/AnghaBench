#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_9__ {int /*<<< orphan*/ * chain_store; int /*<<< orphan*/ * verify_store; } ;
struct TYPE_8__ {TYPE_2__* ssl; TYPE_1__* ctx; } ;
struct TYPE_7__ {TYPE_4__* cert; } ;
struct TYPE_6__ {TYPE_4__* cert; } ;
typedef  TYPE_3__ SSL_CONF_CTX ;
typedef  TYPE_4__ CERT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

__attribute__((used)) static int FUNC2(SSL_CONF_CTX *cctx,
                    const char *CAfile, const char *CApath, int verify_store)
{
    CERT *cert;
    X509_STORE **st;
    if (cctx->ctx)
        cert = cctx->ctx->cert;
    else if (cctx->ssl)
        cert = cctx->ssl->cert;
    else
        return 1;
    st = verify_store ? &cert->verify_store : &cert->chain_store;
    if (*st == NULL) {
        *st = FUNC1();
        if (*st == NULL)
            return 0;
    }
    return FUNC0(*st, CAfile, CApath) > 0;
}