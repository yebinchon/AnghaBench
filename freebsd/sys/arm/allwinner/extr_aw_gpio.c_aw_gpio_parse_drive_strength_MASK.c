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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  drive_str ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 

__attribute__((used)) static int
FUNC1(phandle_t node, uint32_t *drive)
{
	uint32_t drive_str;

	if (FUNC0(node, "drive", drive, sizeof(*drive)) != -1)
		return (0);
	if (FUNC0(node, "allwinner,drive", drive, sizeof(*drive)) != -1)
		return (0);
	if (FUNC0(node, "drive-strength", &drive_str,
	    sizeof(drive_str)) != -1) {
		*drive = (drive_str / 10) - 1;
		return (0);
	}

	return (1);
}