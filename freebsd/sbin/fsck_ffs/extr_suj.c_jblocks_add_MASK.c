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
typedef  scalar_t__ ufs2_daddr_t ;
struct jextent {scalar_t__ je_daddr; int je_blocks; } ;
struct jblocks {size_t jb_used; int jb_avail; struct jextent* jb_extent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jextent*,struct jextent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct jextent*,int) ; 
 struct jextent* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct jextent*) ; 

__attribute__((used)) static void
FUNC4(struct jblocks *jblocks, ufs2_daddr_t daddr, int blocks)
{
	struct jextent *jext;
	int size;

	jext = &jblocks->jb_extent[jblocks->jb_used];
	/* Adding the first block. */
	if (jext->je_daddr == 0) {
		jext->je_daddr = daddr;
		jext->je_blocks = blocks;
		return;
	}
	/* Extending the last extent. */
	if (jext->je_daddr + jext->je_blocks == daddr) {
		jext->je_blocks += blocks;
		return;
	}
	/* Adding a new extent. */
	if (++jblocks->jb_used == jblocks->jb_avail) {
		jblocks->jb_avail *= 2;
		size = sizeof(struct jextent) * jblocks->jb_avail;
		jext = FUNC2(size);
		FUNC1(jext, size);
		FUNC0(jblocks->jb_extent, jext,
		    sizeof(struct jextent) * jblocks->jb_used);
		FUNC3(jblocks->jb_extent);
		jblocks->jb_extent = jext;
	}
	jext = &jblocks->jb_extent[jblocks->jb_used];
	jext->je_daddr = daddr;
	jext->je_blocks = blocks;

	return;
}