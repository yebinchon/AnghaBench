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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int LIBUSB_ERROR_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timeval*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 

int
FUNC4(libusb_context *ctx, struct timeval *tv)
{
	int err;

	ctx = FUNC0(ctx);

	if (FUNC2(ctx)) {
		err = FUNC1(ctx, tv);
	} else {
		err = FUNC3(ctx, tv);
		if (err != 0)
			err = LIBUSB_ERROR_TIMEOUT;
	}
	return (err);
}