#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC1(X509_STORE_CTX *ctx, int purpose)
{
    /*
     * XXX: Why isn't this function always used to set the associated trust?
     * Should there even be a VPM->trust field at all?  Or should the trust
     * always be inferred from the purpose by X509_STORE_CTX_init().
     */
    return FUNC0(ctx, 0, purpose, 0);
}