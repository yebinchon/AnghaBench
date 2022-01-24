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
struct usb_interface {scalar_t__ num_altsetting; scalar_t__ altsetting; scalar_t__ cur_altsetting; int /*<<< orphan*/  bsd_iface_index; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct usb_interface* FUNC0 (struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,struct usb_interface*) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC3(struct usb_device *dev, uint8_t iface_no, uint8_t alt_index)
{
	struct usb_interface *p_ui = FUNC0(dev, iface_no);
	int err;

	if (p_ui == NULL)
		return (-EINVAL);
	if (alt_index >= p_ui->num_altsetting)
		return (-EINVAL);
	FUNC1(dev, p_ui);
	err = -FUNC2(dev,
	    p_ui->bsd_iface_index, alt_index);
	if (err == 0) {
		p_ui->cur_altsetting = p_ui->altsetting + alt_index;
	}
	return (err);
}