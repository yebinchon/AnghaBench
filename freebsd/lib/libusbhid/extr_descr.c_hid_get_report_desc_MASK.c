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
struct usb_gen_descriptor {int ugd_maxlen; int ugd_actlen; void* ugd_data; } ;
typedef  int /*<<< orphan*/ * report_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  USB_GET_REPORT_DESC ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/ * FUNC3 (void*,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct usb_gen_descriptor*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_gen_descriptor*,int /*<<< orphan*/ ,int) ; 

report_desc_t
FUNC7(int fd)
{
	struct usb_gen_descriptor ugd;
	report_desc_t rep;
	void *data;

	FUNC6(&ugd, 0, sizeof(ugd));

	/* get actual length first */
	ugd.ugd_data = FUNC2(NULL);
	ugd.ugd_maxlen = 65535;
	if (FUNC4(fd, USB_GET_REPORT_DESC, &ugd) < 0) {
#ifdef HID_COMPAT7
		/* could not read descriptor */
		/* try FreeBSD 7 compat code */
		return (hid_get_report_desc_compat7(fd));
#else
		return (NULL);
#endif
	}

	/*
	 * NOTE: The kernel will return a failure if 
	 * "ugd_actlen" is zero.
	 */
	data = FUNC5(ugd.ugd_actlen);
	if (data == NULL)
		return (NULL);

	/* fetch actual descriptor */
	ugd.ugd_data = FUNC2(data);
	ugd.ugd_maxlen = ugd.ugd_actlen;
	if (FUNC4(fd, USB_GET_REPORT_DESC, &ugd) < 0) {
		/* could not read descriptor */
		FUNC0(data);
		return (NULL);
	}

	/* sanity check */
	if (ugd.ugd_actlen < 1) {
		/* invalid report descriptor */
		FUNC0(data);
		return (NULL);
	}

	/* check END_COLLECTION */
	if (((unsigned char *)data)[ugd.ugd_actlen -1] != 0xC0) {
		/* invalid end byte */
		FUNC0(data);
		return (NULL);
	}

	rep = FUNC3(data, ugd.ugd_actlen);

	FUNC0(data);

	return (rep);
}