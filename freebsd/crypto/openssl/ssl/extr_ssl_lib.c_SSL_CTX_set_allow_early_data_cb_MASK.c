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
struct TYPE_3__ {void* allow_early_data_cb_data; int /*<<< orphan*/  allow_early_data_cb; } ;
typedef  int /*<<< orphan*/  SSL_allow_early_data_cb_fn ;
typedef  TYPE_1__ SSL_CTX ;

/* Variables and functions */

void FUNC0(SSL_CTX *ctx,
                                     SSL_allow_early_data_cb_fn cb,
                                     void *arg)
{
    ctx->allow_early_data_cb = cb;
    ctx->allow_early_data_cb_data = arg;
}