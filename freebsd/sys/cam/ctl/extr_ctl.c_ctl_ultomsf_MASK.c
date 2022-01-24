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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(uint32_t lba, uint8_t *buf)
{

	lba += 150;
	buf[0] = 0;
	buf[1] = FUNC0((lba / 75) / 60);
	buf[2] = FUNC0((lba / 75) % 60);
	buf[3] = FUNC0(lba % 75);
}