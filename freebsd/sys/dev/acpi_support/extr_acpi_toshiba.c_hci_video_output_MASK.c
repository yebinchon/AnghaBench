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
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  HCI_REG_VIDEO_OUTPUT ; 
 int HCI_SET ; 
 int HCI_VIDEO_OUTPUT_FLAG ; 
 int /*<<< orphan*/  METHOD_VIDEO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  toshiba ; 

__attribute__((used)) static int
FUNC4(ACPI_HANDLE h, int op, UINT32 *video_output)
{
	int		ret;
	ACPI_STATUS	status;

	FUNC0(toshiba);
	if (op == HCI_SET) {
		if (*video_output < 1 || *video_output > 7)
			return (EINVAL);
		if (h == NULL)
			return (ENXIO);
		*video_output |= HCI_VIDEO_OUTPUT_FLAG;
		status = FUNC2(h, METHOD_VIDEO, *video_output);
		if (FUNC1(status))
			ret = 0;
		else
			ret = ENXIO;
	} else {
		ret = FUNC3(h, op, HCI_REG_VIDEO_OUTPUT, video_output);
		if (ret == 0)
			*video_output &= 0xff;
	}

	return (ret);
}