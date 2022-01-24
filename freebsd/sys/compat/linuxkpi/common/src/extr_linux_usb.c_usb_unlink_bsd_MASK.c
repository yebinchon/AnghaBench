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
typedef  scalar_t__ uint8_t ;
struct usb_xfer {void* priv_fifo; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC6(struct usb_xfer *xfer,
    struct urb *urb, uint8_t drain)
{
	if (xfer == NULL)
		return;
	if (!FUNC3(xfer))
		return;
	if (xfer->priv_fifo == (void *)urb) {
		if (drain) {
			FUNC1(&Giant);
			FUNC2(xfer);
			FUNC0(&Giant);
		} else {
			FUNC5(xfer);
		}
		FUNC4(xfer);
	}
}