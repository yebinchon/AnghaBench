#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* cert; } ;
struct TYPE_11__ {TYPE_3__* cert; } ;
struct TYPE_10__ {TYPE_1__* pkeys; } ;
struct TYPE_9__ {int flags; char** cert_filename; int /*<<< orphan*/ * canames; TYPE_6__* ctx; TYPE_5__* ssl; } ;
struct TYPE_8__ {int /*<<< orphan*/  privatekey; } ;
typedef  TYPE_2__ SSL_CONF_CTX ;
typedef  TYPE_3__ CERT ;

/* Variables and functions */
 int SSL_CONF_FLAG_REQUIRE_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 size_t SSL_PKEY_NUM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_NAME_free ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(SSL_CONF_CTX *cctx)
{
    /* See if any certificates are missing private keys */
    size_t i;
    CERT *c = NULL;
    if (cctx->ctx)
        c = cctx->ctx->cert;
    else if (cctx->ssl)
        c = cctx->ssl->cert;
    if (c && cctx->flags & SSL_CONF_FLAG_REQUIRE_PRIVATE) {
        for (i = 0; i < SSL_PKEY_NUM; i++) {
            const char *p = cctx->cert_filename[i];
            /*
             * If missing private key try to load one from certificate file
             */
            if (p && !c->pkeys[i].privatekey) {
                if (!FUNC2(cctx, p))
                    return 0;
            }
        }
    }
    if (cctx->canames) {
        if (cctx->ssl)
            FUNC1(cctx->ssl, cctx->canames);
        else if (cctx->ctx)
            FUNC0(cctx->ctx, cctx->canames);
        else
            FUNC3(cctx->canames, X509_NAME_free);
        cctx->canames = NULL;
    }
    return 1;
}