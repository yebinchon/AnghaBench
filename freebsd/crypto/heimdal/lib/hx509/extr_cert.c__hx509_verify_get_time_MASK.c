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
typedef  int /*<<< orphan*/  time_t ;
typedef  TYPE_1__* hx509_verify_ctx ;
struct TYPE_3__ {int /*<<< orphan*/  time_now; } ;

/* Variables and functions */

time_t
FUNC0(hx509_verify_ctx ctx)
{
    return ctx->time_now;
}