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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(uint8_t *timestamp_6b_buf,
		      uint64_t timestamp)
{
	uint8_t buf[8];
	FUNC1(timestamp, buf);
	/*
	 * Using memcopy starting at buf[2] because the set timestamp parameters
	 * only has six bytes for the timestamp to fit into, and we don't have a
	 * scsi_u64to6b function.
	 */
	FUNC0(timestamp_6b_buf, &buf[2], 6);
}