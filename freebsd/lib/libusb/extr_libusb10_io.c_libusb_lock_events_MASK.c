#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ctx_handler; } ;
typedef  TYPE_1__ libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ NO_THREAD ; 
 scalar_t__ FUNC2 () ; 

void
FUNC3(libusb_context *ctx)
{
	ctx = FUNC1(ctx);
	FUNC0(ctx);
	if (ctx->ctx_handler == NO_THREAD)
		ctx->ctx_handler = FUNC2();
}