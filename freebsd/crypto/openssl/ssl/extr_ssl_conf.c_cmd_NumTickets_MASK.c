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
struct TYPE_3__ {scalar_t__ ssl; scalar_t__ ctx; } ;
typedef  TYPE_1__ SSL_CONF_CTX ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (scalar_t__,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 0;
    int num_tickets = FUNC2(value);

    if (num_tickets >= 0) {
        if (cctx->ctx)
            rv = FUNC0(cctx->ctx, num_tickets);
        if (cctx->ssl)
            rv = FUNC1(cctx->ssl, num_tickets);
    }
    return rv;
}