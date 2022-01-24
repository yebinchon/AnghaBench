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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBUSB_DEBUG_FUNCTION ; 
 int FUNC2 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(libusb_context *ctx,
    struct timeval *tv, int *completed)
{
	int err = 0;

	ctx = FUNC1(ctx);

	FUNC0(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_handle_events_timeout_completed enter");

	FUNC3(ctx);

	while (1) {
		if (completed != NULL) {
			if (*completed != 0 || err != 0)
				break;
		}
		err = FUNC2(ctx, tv);
		if (completed == NULL)
			break;
	}

	FUNC4(ctx);

	FUNC0(ctx, LIBUSB_DEBUG_FUNCTION, "libusb_handle_events_timeout_completed exit");

	return (err);
}