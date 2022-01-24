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
typedef  int uint64_t ;
typedef  int u_char ;
struct g_bde_softc {scalar_t__ sha2; } ;
struct g_bde_key {int sectorsize; int* lsector; int flags; int* spare; scalar_t__ keyoffset; scalar_t__ sectorN; scalar_t__ sector0; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int GBDE_F_SECT0 ; 
 int G_BDE_LOCKSIZE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (scalar_t__,struct g_bde_key*,int*) ; 
 int FUNC6 (scalar_t__,int,int,int*) ; 
 int FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 
 int FUNC10 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int FUNC13 (int,int*,int) ; 
 int FUNC14 (int,int*,int) ; 

__attribute__((used)) static void
FUNC15(struct g_bde_key *gl, struct g_bde_softc *sc, int dfd , int key, const char *l_opt)
{
	int i, ffd;
	uint64_t off[2];
	u_char keyloc[16];
	u_char *sbuf, *q;
	off_t offset, offset2;

	sbuf = FUNC8(gl->sectorsize);
	/*
	 * Find the byte-offset in the lock sector where we will put the lock
	 * data structure.  We can put it any random place as long as the
	 * structure fits.
	 */
	for(;;) {
		FUNC12(off, sizeof off);
		off[0] &= (gl->sectorsize - 1);
		if (off[0] + G_BDE_LOCKSIZE > gl->sectorsize)
			continue;
		break;
	}

	/* Add the sector offset in bytes */
	off[0] += (gl->lsector[key] & ~(gl->sectorsize - 1));
	gl->lsector[key] = off[0];

	i = FUNC6(sc->sha2, off[0], off[1], keyloc);
	if (i)
		FUNC3(1, "g_bde_keyloc_encrypt()");
	if (l_opt != NULL) {
		ffd = FUNC10(l_opt, O_WRONLY | O_CREAT | O_TRUNC, 0600);
		if (ffd < 0)
			FUNC2(1, "%s", l_opt);
		FUNC14(ffd, keyloc, sizeof keyloc);
		FUNC0(ffd);
	} else if (gl->flags & GBDE_F_SECT0) {
		offset2 = FUNC7(dfd, 0, SEEK_SET);
		if (offset2 != 0)
			FUNC2(1, "lseek");
		i = FUNC13(dfd, sbuf, gl->sectorsize);
		if (i != (int)gl->sectorsize)
			FUNC2(1, "read");
		FUNC9(sbuf + key * 16, keyloc, sizeof keyloc);
		offset2 = FUNC7(dfd, 0, SEEK_SET);
		if (offset2 != 0)
			FUNC2(1, "lseek");
		i = FUNC14(dfd, sbuf, gl->sectorsize);
		if (i != (int)gl->sectorsize)
			FUNC2(1, "write");
	} else {
		FUNC3(1, "No -L option and no space in sector 0 for lockfile");
	}

	/* Allocate a sectorbuffer and fill it with random junk */
	if (sbuf == NULL)
		FUNC2(1, "malloc");
	FUNC12(sbuf, gl->sectorsize);

	/* Fill random bits in the spare field */
	FUNC12(gl->spare, sizeof(gl->spare));

	/* Encode the structure where we want it */
	q = sbuf + (off[0] % gl->sectorsize);
	i = FUNC5(sc->sha2, gl, q);
	if (i < 0)
		FUNC3(1, "programming error encoding lock");

	FUNC1(q, G_BDE_LOCKSIZE, 256, sc->sha2 + 16);
	offset = gl->lsector[key] & ~(gl->sectorsize - 1);
	offset2 = FUNC7(dfd, offset, SEEK_SET);
	if (offset2 != offset)
		FUNC2(1, "lseek");
	i = FUNC14(dfd, sbuf, gl->sectorsize);
	if (i != (int)gl->sectorsize)
		FUNC2(1, "write");
	FUNC4(sbuf);
#if 0
	printf("Wrote key %d at %jd\n", key, (intmax_t)offset);
	printf("s0 = %jd\n", (intmax_t)gl->sector0);
	printf("sN = %jd\n", (intmax_t)gl->sectorN);
	printf("l[0] = %jd\n", (intmax_t)gl->lsector[0]);
	printf("l[1] = %jd\n", (intmax_t)gl->lsector[1]);
	printf("l[2] = %jd\n", (intmax_t)gl->lsector[2]);
	printf("l[3] = %jd\n", (intmax_t)gl->lsector[3]);
	printf("k = %jd\n", (intmax_t)gl->keyoffset);
	printf("ss = %jd\n", (intmax_t)gl->sectorsize);
#endif
}