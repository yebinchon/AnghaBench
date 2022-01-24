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
struct activemap {scalar_t__ am_magic; int /*<<< orphan*/  am_syncmap; int /*<<< orphan*/  am_memmap; int /*<<< orphan*/  am_diskmap; int /*<<< orphan*/  am_memtab; } ;

/* Variables and functions */
 scalar_t__ ACTIVEMAP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct activemap*) ; 

void
FUNC3(struct activemap *amp)
{

	FUNC0(amp->am_magic == ACTIVEMAP_MAGIC);

	amp->am_magic = 0;

	FUNC2(amp);
	FUNC1(amp->am_memtab);
	FUNC1(amp->am_diskmap);
	FUNC1(amp->am_memmap);
	FUNC1(amp->am_syncmap);
}