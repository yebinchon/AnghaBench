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
typedef  int /*<<< orphan*/  X509_LOOKUP ;
struct TYPE_3__ {int /*<<< orphan*/  cert_store; } ;
typedef  TYPE_1__ SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  X509_FILETYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(SSL_CTX *ctx)
{
    X509_LOOKUP *lookup;

    lookup = FUNC3(ctx->cert_store, FUNC1());
    if (lookup == NULL)
        return 0;

    FUNC2(lookup, NULL, X509_FILETYPE_DEFAULT);

    /* Clear any errors if the default file does not exist */
    FUNC0();

    return 1;
}