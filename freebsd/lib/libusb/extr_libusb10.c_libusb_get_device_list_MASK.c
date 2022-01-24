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
struct libusb_device {struct libusb20_device* os_priv; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  tr_head; } ;
struct libusb20_device {struct libusb_device* privLuData; } ;
struct libusb20_backend {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  libusb_device ;
typedef  int /*<<< orphan*/  libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int LIBUSB_ERROR_INVALID_PARAM ; 
 int LIBUSB_ERROR_NO_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 struct libusb20_backend* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_backend*,struct libusb20_device*) ; 
 struct libusb20_device* FUNC5 (struct libusb20_backend*,struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_backend*) ; 
 int /*<<< orphan*/ * FUNC7 (struct libusb_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct libusb_device*,int /*<<< orphan*/ ,int) ; 

ssize_t
FUNC11(libusb_context *ctx, libusb_device ***list)
{
	struct libusb20_backend *usb_backend;
	struct libusb20_device *pdev;
	struct libusb_device *dev;
	int i;

	ctx = FUNC0(ctx);

	if (ctx == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	if (list == NULL)
		return (LIBUSB_ERROR_INVALID_PARAM);

	usb_backend = FUNC3();
	if (usb_backend == NULL)
		return (LIBUSB_ERROR_NO_MEM);

	/* figure out how many USB devices are present */
	pdev = NULL;
	i = 0;
	while ((pdev = FUNC5(usb_backend, pdev)))
		i++;

	/* allocate device pointer list */
	*list = FUNC9((i + 1) * sizeof(void *));
	if (*list == NULL) {
		FUNC6(usb_backend);
		return (LIBUSB_ERROR_NO_MEM);
	}
	/* create libusb v1.0 compliant devices */
	i = 0;
	while ((pdev = FUNC5(usb_backend, NULL))) {

		dev = FUNC9(sizeof(*dev));
		if (dev == NULL) {
			while (i != 0) {
				FUNC8((*list)[i - 1]);
				i--;
			}
			FUNC2(*list);
			*list = NULL;
			FUNC6(usb_backend);
			return (LIBUSB_ERROR_NO_MEM);
		}
		/* get device into libUSB v1.0 list */
		FUNC4(usb_backend, pdev);

		FUNC10(dev, 0, sizeof(*dev));

		/* init transfer queues */
		FUNC1(&dev->tr_head);

		/* set context we belong to */
		dev->ctx = ctx;

		/* link together the two structures */
		dev->os_priv = pdev;
		pdev->privLuData = dev;

		(*list)[i] = FUNC7(dev);
		i++;
	}
	(*list)[i] = NULL;

	FUNC6(usb_backend);
	return (i);
}