#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ufs2_daddr_t ;
struct TYPE_7__ {int fs_frag; scalar_t__ fs_fpg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ debug ; 
 int FUNC3 (TYPE_1__*,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ maxfsblock ; 
 int /*<<< orphan*/  FUNC5 (char*,long,long,...) ; 
 TYPE_1__ sblock ; 

int
FUNC6(ufs2_daddr_t blk, int cnt)
{
	int c;

	if (cnt <= 0 || blk <= 0 || blk > maxfsblock ||
	    cnt - 1 > maxfsblock - blk)
		return (1);
	if (cnt > sblock.fs_frag ||
	    FUNC4(&sblock, blk) + cnt > sblock.fs_frag) {
		if (debug)
			FUNC5("bad size: blk %ld, offset %i, size %d\n",
			    (long)blk, (int)FUNC4(&sblock, blk), cnt);
		return (1);
	}
	c = FUNC3(&sblock, blk);
	if (blk < FUNC1(&sblock, c)) {
		if ((blk + cnt) > FUNC2(&sblock, c)) {
			if (debug) {
				FUNC5("blk %ld < cgdmin %ld;",
				    (long)blk, (long)FUNC1(&sblock, c));
				FUNC5(" blk + cnt %ld > cgsbase %ld\n",
				    (long)(blk + cnt),
				    (long)FUNC2(&sblock, c));
			}
			return (1);
		}
	} else {
		if ((blk + cnt) > FUNC0(&sblock, c+1)) {
			if (debug)  {
				FUNC5("blk %ld >= cgdmin %ld;",
				    (long)blk, (long)FUNC1(&sblock, c));
				FUNC5(" blk + cnt %ld > sblock.fs_fpg %ld\n",
				    (long)(blk + cnt), (long)sblock.fs_fpg);
			}
			return (1);
		}
	}
	return (0);
}