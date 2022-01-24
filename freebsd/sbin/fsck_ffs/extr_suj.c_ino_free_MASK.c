#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct suj_cg {int sc_dirty; struct cg* sc_cgp; } ;
struct TYPE_4__ {int /*<<< orphan*/  cs_ndir; int /*<<< orphan*/  cs_nifree; } ;
struct cg {int cg_irotor; TYPE_1__ cg_cs; } ;
typedef  int ino_t ;
struct TYPE_5__ {int fs_ipg; } ;

/* Variables and functions */
 int IFDIR ; 
 int IFMT ; 
 int /*<<< orphan*/ * FUNC0 (struct cg*) ; 
 struct suj_cg* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  freedir ; 
 int /*<<< orphan*/  freeinos ; 
 TYPE_2__* fs ; 
 int FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(ino_t ino, int mode)
{
	struct suj_cg *sc;
	uint8_t *inosused;
	struct cg *cgp;
	int cg;

	cg = FUNC3(fs, ino);
	ino = ino % fs->fs_ipg;
	sc = FUNC1(cg);
	cgp = sc->sc_cgp;
	inosused = FUNC0(cgp);
	/*
	 * The bitmap may never have made it to the disk so we have to
	 * conditionally clear.  We can avoid writing the cg in this case.
	 */
	if (FUNC4(inosused, ino))
		return (0);
	freeinos++;
	FUNC2(inosused, ino);
	if (ino < cgp->cg_irotor)
		cgp->cg_irotor = ino;
	cgp->cg_cs.cs_nifree++;
	if ((mode & IFMT) == IFDIR) {
		freedir++;
		cgp->cg_cs.cs_ndir--;
	}
	sc->sc_dirty = 1;

	return (1);
}