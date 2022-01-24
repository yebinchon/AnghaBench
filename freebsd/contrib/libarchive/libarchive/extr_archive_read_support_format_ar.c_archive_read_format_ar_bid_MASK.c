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
struct archive_read {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct archive_read*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void const*,char*,int) ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a, int best_bid)
{
	const void *h;

	(void)best_bid; /* UNUSED */

	/*
	 * Verify the 8-byte file signature.
	 * TODO: Do we need to check more than this?
	 */
	if ((h = FUNC0(a, 8, NULL)) == NULL)
		return (-1);
	if (FUNC1(h, "!<arch>\n", 8) == 0) {
		return (64);
	}
	return (-1);
}