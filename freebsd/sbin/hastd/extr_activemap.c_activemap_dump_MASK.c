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
struct activemap {int am_nextents; int /*<<< orphan*/  am_syncmap; int /*<<< orphan*/  am_diskmap; int /*<<< orphan*/  am_memmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(const struct activemap *amp)
{
	int bit;

	FUNC1("M: ");
	for (bit = 0; bit < amp->am_nextents; bit++)
		FUNC1("%d", FUNC0(amp->am_memmap, bit) ? 1 : 0);
	FUNC1("\n");
	FUNC1("D: ");
	for (bit = 0; bit < amp->am_nextents; bit++)
		FUNC1("%d", FUNC0(amp->am_diskmap, bit) ? 1 : 0);
	FUNC1("\n");
	FUNC1("S: ");
	for (bit = 0; bit < amp->am_nextents; bit++)
		FUNC1("%d", FUNC0(amp->am_syncmap, bit) ? 1 : 0);
	FUNC1("\n");
}