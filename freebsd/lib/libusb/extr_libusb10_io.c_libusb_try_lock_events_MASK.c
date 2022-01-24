#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ctx_handler; } ;
typedef  TYPE_1__ libusb_context ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ NO_THREAD ; 
 scalar_t__ FUNC3 () ; 

int
FUNC4(libusb_context *ctx)
{
	int err;

	ctx = FUNC2(ctx);
	if (ctx == NULL)
		return (1);

	err = FUNC0(ctx);
	if (err)
		return (1);

	err = (ctx->ctx_handler != NO_THREAD);
	if (err)
		FUNC1(ctx);
	else
		ctx->ctx_handler = FUNC3();

	return (err);
}