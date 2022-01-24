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
typedef  int /*<<< orphan*/ * libusb_hotplug_callback_handle ;
struct TYPE_7__ {int /*<<< orphan*/  hotplug_cbh; } ;
typedef  TYPE_1__ libusb_context ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(libusb_context *ctx,
    libusb_hotplug_callback_handle handle)
{
  	ctx = FUNC0(ctx);

	if (ctx == NULL || handle == NULL)
		return;

	FUNC1(ctx);
	FUNC3(&ctx->hotplug_cbh, handle, entry);
	FUNC2(ctx);

	FUNC4(handle);
}