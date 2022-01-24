#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; scalar_t__ ssl; scalar_t__ ctx; } ;
typedef  TYPE_1__ SSL_CONF_CTX ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int NID_undef ; 
 int FUNC3 (char const*) ; 
 int SSL_CONF_FLAG_CMDLINE ; 
 int SSL_CONF_FLAG_FILE ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 1;
    EC_KEY *ecdh;
    int nid;

    /* Ignore values supported by 1.0.2 for the automatic selection */
    if ((cctx->flags & SSL_CONF_FLAG_FILE)
            && (FUNC6(value, "+automatic") == 0
                || FUNC6(value, "automatic") == 0))
        return 1;
    if ((cctx->flags & SSL_CONF_FLAG_CMDLINE) &&
        FUNC7(value, "auto") == 0)
        return 1;

    nid = FUNC2(value);
    if (nid == NID_undef)
        nid = FUNC3(value);
    if (nid == 0)
        return 0;
    ecdh = FUNC1(nid);
    if (!ecdh)
        return 0;
    if (cctx->ctx)
        rv = FUNC4(cctx->ctx, ecdh);
    else if (cctx->ssl)
        rv = FUNC5(cctx->ssl, ecdh);
    FUNC0(ecdh);

    return rv > 0;
}