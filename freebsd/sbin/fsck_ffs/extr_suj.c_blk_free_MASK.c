#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
typedef  scalar_t__ ufs1_daddr_t ;
struct suj_cg {int sc_dirty; struct cg* sc_cgp; } ;
struct cg {int dummy; } ;
struct TYPE_6__ {int fs_frag; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct cg*) ; 
 struct suj_cg* FUNC1 (int) ; 
 scalar_t__ debug ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  freeblocks ; 
 int /*<<< orphan*/  freefrags ; 
 TYPE_1__* fs ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC9(ufs2_daddr_t bno, int mask, int frags)
{
	ufs1_daddr_t fragno, cgbno;
	struct suj_cg *sc;
	struct cg *cgp;
	int i, cg;
	uint8_t *blksfree;

	if (debug)
		FUNC7("Freeing %d frags at blk %jd mask 0x%x\n",
		    frags, bno, mask);
	cg = FUNC2(fs, bno);
	sc = FUNC1(cg);
	cgp = sc->sc_cgp;
	cgbno = FUNC3(fs, bno);
	blksfree = FUNC0(cgp);

	/*
	 * If it's not allocated we only wrote the journal entry
	 * and never the bitmaps.  Here we unconditionally clear and
	 * resolve the cg summary later.
	 */
	if (frags == fs->fs_frag && mask == 0) {
		fragno = FUNC5(fs, cgbno);
		FUNC4(fs, blksfree, fragno);
		freeblocks++;
	} else {
		/*
		 * deallocate the fragment
		 */
		for (i = 0; i < frags; i++)
			if ((mask & (1 << i)) == 0 && FUNC6(blksfree, cgbno +i)) {
				freefrags++;
				FUNC8(blksfree, cgbno + i);
			}
	}
	sc->sc_dirty = 1;
}