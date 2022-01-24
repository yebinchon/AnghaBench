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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct scsi_range_desc {int /*<<< orphan*/  length; int /*<<< orphan*/  lba; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct scsi_range_desc *range, int nrange)
{
	uint64_t b1, b2;
	uint32_t l1, l2;
	int i, j;

	for (i = 0; i < nrange - 1; i++) {
		b1 = FUNC1(range[i].lba);
		l1 = FUNC0(range[i].length);
		for (j = i + 1; j < nrange; j++) {
			b2 = FUNC1(range[j].lba);
			l2 = FUNC0(range[j].length);
			if (b1 + l1 > b2 && b2 + l2 > b1)
				return (-1);
		}
	}
	return (0);
}