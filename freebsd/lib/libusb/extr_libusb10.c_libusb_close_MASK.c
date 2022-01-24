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
struct libusb_device {int /*<<< orphan*/  dev_poll; int /*<<< orphan*/ * ctx; } ;
struct libusb20_device {int dummy; } ;
typedef  int /*<<< orphan*/  libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_device*) ; 
 struct libusb_device* FUNC3 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb_device*) ; 

void
FUNC5(struct libusb20_device *pdev)
{
	libusb_context *ctx;
	struct libusb_device *dev;

	if (pdev == NULL)
		return;			/* be NULL safe */

	dev = FUNC3(pdev);
	ctx = dev->ctx;

	FUNC0(ctx, &dev->dev_poll);

	FUNC2(pdev);

	/* unref will free the "pdev" when the refcount reaches zero */
	FUNC4(dev);

	/* make sure our event loop detects the closed device */
	FUNC1(ctx);
}