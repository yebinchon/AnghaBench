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
struct jextent {int dummy; } ;
struct jblocks {int jb_avail; void* jb_extent; scalar_t__ jb_off; scalar_t__ jb_head; scalar_t__ jb_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static struct jblocks *
FUNC2(void)
{
	struct jblocks *jblocks;
	int size;

	jblocks = FUNC1(sizeof(*jblocks));
	jblocks->jb_avail = 10;
	jblocks->jb_used = 0;
	jblocks->jb_head = 0;
	jblocks->jb_off = 0;
	size = sizeof(struct jextent) * jblocks->jb_avail;
	jblocks->jb_extent = FUNC1(size);
	FUNC0(jblocks->jb_extent, size);

	return (jblocks);
}