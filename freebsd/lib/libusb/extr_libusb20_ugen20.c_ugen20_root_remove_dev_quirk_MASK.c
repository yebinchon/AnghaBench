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
struct usb_gen_quirk {int /*<<< orphan*/  quirkname; int /*<<< orphan*/  bcdDeviceHigh; int /*<<< orphan*/  bcdDeviceLow; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; } ;
struct libusb20_quirk {int /*<<< orphan*/  quirkname; int /*<<< orphan*/  bcdDeviceHigh; int /*<<< orphan*/  bcdDeviceLow; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; } ;
struct libusb20_backend {int dummy; } ;
typedef  int /*<<< orphan*/  q ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  USB_DEV_QUIRK_REMOVE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct usb_gen_quirk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct usb_gen_quirk*) ; 

__attribute__((used)) static int
FUNC4(struct libusb20_backend *pbe,
    struct libusb20_quirk *pq)
{
	struct usb_gen_quirk q;
	int error;

	FUNC1(&q, 0, sizeof(q));

	q.vid = pq->vid;
	q.pid = pq->pid;
	q.bcdDeviceLow = pq->bcdDeviceLow;
	q.bcdDeviceHigh = pq->bcdDeviceHigh;
	FUNC2(q.quirkname, pq->quirkname, sizeof(q.quirkname));

	error = FUNC3(FUNC0(USB_DEV_QUIRK_REMOVE), &q);
	if (error) {
		if (errno == EINVAL) {
			return (LIBUSB20_ERROR_NOT_FOUND);
		}
	}
	return (error);
}