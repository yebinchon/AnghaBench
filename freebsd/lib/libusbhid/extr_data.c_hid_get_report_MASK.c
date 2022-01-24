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
typedef  int /*<<< orphan*/  ugd ;
struct usb_gen_descriptor {unsigned int ugd_maxlen; int ugd_report_type; int /*<<< orphan*/  ugd_data; } ;
typedef  enum hid_kind { ____Placeholder_hid_kind } hid_kind ;

/* Variables and functions */
 int /*<<< orphan*/  USB_GET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct usb_gen_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_gen_descriptor*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(int fd, enum hid_kind k, unsigned char *data, unsigned int size)
{
	struct usb_gen_descriptor ugd;

	FUNC2(&ugd, 0, sizeof(ugd));
	ugd.ugd_data = FUNC0(data);
	ugd.ugd_maxlen = size;
	ugd.ugd_report_type = k + 1;
	return (FUNC1(fd, USB_GET_REPORT, &ugd));
}