#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * report_desc_t ;
struct TYPE_3__ {int report_ID; } ;
typedef  TYPE_1__ hid_item_t ;
typedef  int /*<<< orphan*/  hid_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  USB_GET_REPORT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int hid_feature ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int hid_input ; 
 int hid_output ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int*) ; 

int
FUNC7(int fd)
{
	report_desc_t rep;
	hid_data_t d;
	hid_item_t h;
	int kindset;
	int temp = -1;
	int ret;

	if ((rep = FUNC3(fd)) == NULL)
		goto use_ioctl;
	kindset = 1 << hid_input | 1 << hid_output | 1 << hid_feature;
	for (d = FUNC5(rep, kindset, -1); FUNC2(d, &h); ) {
		/* Return the first report ID we met. */
		if (h.report_ID != 0) {
			temp = h.report_ID;
			break;
		}
	}
	FUNC1(d);
	FUNC0(rep);

	if (temp > 0)
		return (temp);

use_ioctl:
	ret = FUNC6(fd, USB_GET_REPORT_ID, &temp);
#ifdef HID_COMPAT7
	if (ret < 0)
		ret = hid_get_report_id_compat7(fd);
	else
#endif
		ret = temp;

	return (ret);
}