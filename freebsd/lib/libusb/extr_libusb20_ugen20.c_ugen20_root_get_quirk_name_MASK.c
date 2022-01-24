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
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_gen_quirk {int /*<<< orphan*/  quirkname; int /*<<< orphan*/  index; } ;
struct libusb20_quirk {int /*<<< orphan*/  quirkname; } ;
struct libusb20_backend {int dummy; } ;
typedef  int /*<<< orphan*/  q ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LIBUSB20_ERROR_NOT_FOUND ; 
 int /*<<< orphan*/  USB_QUIRK_NAME_GET ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct usb_gen_quirk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct usb_gen_quirk*) ; 

__attribute__((used)) static int
FUNC4(struct libusb20_backend *pbe, uint16_t quirk_index,
    struct libusb20_quirk *pq)
{
	struct usb_gen_quirk q;
	int error;

	FUNC1(&q, 0, sizeof(q));

	q.index = quirk_index;

	error = FUNC3(FUNC0(USB_QUIRK_NAME_GET), &q);

	if (error) {
		if (errno == EINVAL) {
			return (LIBUSB20_ERROR_NOT_FOUND);
		}
	} else {
		FUNC2(pq->quirkname, q.quirkname, sizeof(pq->quirkname));
	}
	return (error);
}