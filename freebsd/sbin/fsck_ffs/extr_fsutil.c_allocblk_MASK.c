#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ufs2_daddr_t ;
struct TYPE_7__ {long cs_nffree; int /*<<< orphan*/  cs_nbfree; } ;
struct cg {TYPE_2__ cg_cs; } ;
struct TYPE_6__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_8__ {long fs_frag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cg*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufarea*) ; 
 struct bufarea* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct bufarea*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int maxfsblock ; 
 long n_blks ; 
 TYPE_3__ sblock ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

ufs2_daddr_t
FUNC9(long frags)
{
	int i, j, k, cg, baseblk;
	struct bufarea *cgbp;
	struct cg *cgp;

	if (frags <= 0 || frags > sblock.fs_frag)
		return (0);
	for (i = 0; i < maxfsblock - sblock.fs_frag; i += sblock.fs_frag) {
		for (j = 0; j <= sblock.fs_frag - frags; j++) {
			if (FUNC8(i + j))
				continue;
			for (k = 1; k < frags; k++)
				if (FUNC8(i + j + k))
					break;
			if (k < frags) {
				j += k;
				continue;
			}
			cg = FUNC5(&sblock, i + j);
			cgbp = FUNC2(cg);
			cgp = cgbp->b_un.b_cg;
			if (!FUNC3(cg, cgbp))
				return (0);
			baseblk = FUNC6(&sblock, i + j);
			for (k = 0; k < frags; k++) {
				FUNC7(i + j + k);
				FUNC4(FUNC0(cgp), baseblk + k);
			}
			n_blks += frags;
			if (frags == sblock.fs_frag)
				cgp->cg_cs.cs_nbfree--;
			else
				cgp->cg_cs.cs_nffree -= frags;
			FUNC1(cgbp);
			return (i + j);
		}
	}
	return (0);
}