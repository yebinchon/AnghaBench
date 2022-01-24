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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int ALTERA_SDCARD_SECTORSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int
FUNC2(void *buf, unsigned lba, unsigned nblk)
{
	uint8_t *bufp = buf;
	int i;

	for (i = 0; i < nblk; i++) {
		if (FUNC0(bufp + i *
		    ALTERA_SDCARD_SECTORSIZE, lba + i) < 0) {
			FUNC1("SD Card: block read %u failed\n", i);
			return (-1);
		}
	}
	return (0);
}