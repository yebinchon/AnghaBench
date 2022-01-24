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
typedef  int /*<<< orphan*/  X509_STORE_CTX_get_issuer_fn ;
struct TYPE_3__ {int /*<<< orphan*/  get_issuer; } ;
typedef  TYPE_1__ X509_STORE ;

/* Variables and functions */

X509_STORE_CTX_get_issuer_fn FUNC0(X509_STORE *ctx)
{
    return ctx->get_issuer;
}