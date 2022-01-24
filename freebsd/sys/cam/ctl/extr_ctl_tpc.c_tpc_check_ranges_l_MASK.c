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
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct scsi_range_desc *range, int nrange, uint64_t maxlba,
    uint64_t *lba)
{
	uint64_t b1;
	uint32_t l1;
	int i;

	for (i = 0; i < nrange; i++) {
		b1 = FUNC2(range[i].lba);
		l1 = FUNC1(range[i].length);
		if (b1 + l1 < b1 || b1 + l1 > maxlba + 1) {
			*lba = FUNC0(b1, maxlba + 1);
			return (-1);
		}
	}
	return (0);
}