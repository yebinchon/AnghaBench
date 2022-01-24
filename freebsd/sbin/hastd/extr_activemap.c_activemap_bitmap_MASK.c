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
struct activemap {scalar_t__ am_magic; size_t am_diskmapsize; scalar_t__ am_diskmap; int /*<<< orphan*/  am_mapsize; int /*<<< orphan*/  am_memmap; } ;

/* Variables and functions */
 scalar_t__ ACTIVEMAP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct activemap*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const unsigned char *
FUNC3(struct activemap *amp, size_t *sizep)
{

	FUNC0(amp->am_magic == ACTIVEMAP_MAGIC);

	if (sizep != NULL)
		*sizep = amp->am_diskmapsize;
	FUNC2(amp->am_diskmap, amp->am_memmap, amp->am_mapsize);
	FUNC1(amp);
	return ((const unsigned char *)amp->am_diskmap);
}