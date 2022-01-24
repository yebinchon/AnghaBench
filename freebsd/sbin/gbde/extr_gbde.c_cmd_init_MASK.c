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
struct g_bde_key {unsigned int sectorsize; int flags; int sector0; int sectorN; int keyoffset; int* lsector; int* mkey; int* salt; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  properties ;
typedef  unsigned int off_t ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  DIOCGSECTORSIZE ; 
 int GBDE_F_SECT0 ; 
 unsigned int G_BDE_MAXKEYS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* _PATH_DEVNULL ; 
 int /*<<< orphan*/  _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g_bde_key*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC8 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int* FUNC9 (unsigned int) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int) ; 
 scalar_t__ FUNC16 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  sorthelp ; 
 unsigned int FUNC17 (int*) ; 
 void* FUNC18 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int* template ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (int,int*,unsigned int) ; 

__attribute__((used)) static void
FUNC22(struct g_bde_key *gl, int dfd, const char *f_opt, int i_opt, const char *l_opt)
{
	int i;
	u_char *buf;
	unsigned sector_size;
	uint64_t	first_sector;
	uint64_t	last_sector;
	uint64_t	total_sectors;
	off_t	off, off2;
	unsigned nkeys;
	const char *p;
	char *q, cbuf[BUFSIZ];
	unsigned u, u2;
	uint64_t o;
	properties	params;

	FUNC1(gl, sizeof *gl);
	if (f_opt != NULL) {
		i = FUNC11(f_opt, O_RDONLY);
		if (i < 0)
			FUNC3(1, "%s", f_opt);
		params = FUNC12(i);
		FUNC2 (i);
	} else if (i_opt) {
		/* XXX: Polish */
		FUNC0(&q, "%dtemp.XXXXXXXXXX", _PATH_TMP);
		if (q == NULL)
			FUNC3(1, "asprintf");
		i = FUNC10(q);
		if (i < 0)
			FUNC3(1, "%s", q);
		FUNC21(i, template, FUNC17(template));
		FUNC2 (i);
		p = FUNC6("EDITOR");
		if (p == NULL)
			p = "vi";
		if (FUNC16(cbuf, sizeof(cbuf), "%s %s\n", p, q) >=
		    (ssize_t)sizeof(cbuf)) {
			FUNC20(q);
			FUNC4(1, "EDITOR is too long");
		}
		FUNC19(cbuf);
		i = FUNC11(q, O_RDONLY);
		if (i < 0)
			FUNC3(1, "%s", f_opt);
		params = FUNC12(i);
		FUNC2 (i);
		FUNC20(q);
		FUNC5(q);
	} else {
		/* XXX: Hack */
		i = FUNC11(_PATH_DEVNULL, O_RDONLY);
		if (i < 0)
			FUNC3(1, "%s", _PATH_DEVNULL);
		params = FUNC12(i);
		FUNC2 (i);
	}

	/* <sector_size> */
	p = FUNC13(params, "sector_size");
	i = FUNC7(dfd, DIOCGSECTORSIZE, &u);
	if (p != NULL) {
		sector_size = FUNC18(p, &q, 0);
		if (!*p || *q)
			FUNC4(1, "sector_size not a proper number");
	} else if (i == 0) {
		sector_size = u;
	} else {
		FUNC4(1, "Missing sector_size property");
	}
	if (sector_size & (sector_size - 1))
		FUNC4(1, "sector_size not a power of 2");
	if (sector_size < 512)
		FUNC4(1, "sector_size is smaller than 512");
	buf = FUNC9(sector_size);
	if (buf == NULL)
		FUNC3(1, "Failed to malloc sector buffer");
	gl->sectorsize = sector_size;

	i = FUNC7(dfd, DIOCGMEDIASIZE, &off);
	if (i == 0) {
		first_sector = 0;
		total_sectors = off / sector_size;
		last_sector = total_sectors - 1;
	} else {
		first_sector = 0;
		last_sector = 0;
		total_sectors = 0;
	}

	/* <first_sector> */
	p = FUNC13(params, "first_sector");
	if (p != NULL) {
		first_sector = FUNC18(p, &q, 0);
		if (!*p || *q)
			FUNC4(1, "first_sector not a proper number");
	}

	/* <last_sector> */
	p = FUNC13(params, "last_sector");
	if (p != NULL) {
		last_sector = FUNC18(p, &q, 0);
		if (!*p || *q)
			FUNC4(1, "last_sector not a proper number");
		if (last_sector <= first_sector)
			FUNC4(1, "last_sector not larger than first_sector");
		total_sectors = last_sector + 1;
	}

	/* <total_sectors> */
	p = FUNC13(params, "total_sectors");
	if (p != NULL) {
		total_sectors = FUNC18(p, &q, 0);
		if (!*p || *q)
			FUNC4(1, "total_sectors not a proper number");
		if (last_sector == 0)
			last_sector = first_sector + total_sectors - 1;
	}

	if (l_opt == NULL && first_sector != 0)
		FUNC4(1, "No -L new-lockfile argument and first_sector != 0");
	else if (l_opt == NULL) {
		first_sector++;
		total_sectors--;
		gl->flags |= GBDE_F_SECT0;
	}
	gl->sector0 = first_sector * gl->sectorsize;

	if (total_sectors != (last_sector - first_sector) + 1)
		FUNC4(1, "total_sectors disagree with first_sector and last_sector");
	if (total_sectors == 0)
		FUNC4(1, "missing last_sector or total_sectors");

	gl->sectorN = (last_sector + 1) * gl->sectorsize;

	/* Find a random keyoffset */
	FUNC15(&o, sizeof o);
	o %= (gl->sectorN - gl->sector0);
	o &= ~(gl->sectorsize - 1);
	gl->keyoffset = o;

	/* <number_of_keys> */
	p = FUNC13(params, "number_of_keys");
	if (p != NULL) {
		nkeys = FUNC18(p, &q, 0);
		if (!*p || *q)
			FUNC4(1, "number_of_keys not a proper number");
		if (nkeys < 1 || nkeys > G_BDE_MAXKEYS)
			FUNC4(1, "number_of_keys out of range");
	} else {
		nkeys = 4;
	}
	for (u = 0; u < nkeys; u++) {
		for(;;) {
			do {
				FUNC15(&o, sizeof o);
				o %= gl->sectorN;
				o &= ~(gl->sectorsize - 1);
			} while(o < gl->sector0);
			for (u2 = 0; u2 < u; u2++)
				if (o == gl->lsector[u2])
					break;
			if (u2 < u)
				continue;
			break;
		}
		gl->lsector[u] = o;
	}
	for (; u < G_BDE_MAXKEYS; u++) {
		do
			FUNC15(&o, sizeof o);
		while (o < gl->sectorN);
		gl->lsector[u] = o;
	}
	FUNC14(gl->lsector, G_BDE_MAXKEYS, sizeof gl->lsector[0], sorthelp);

	/* Flush sector zero if we use it for lockfile data */
	if (gl->flags & GBDE_F_SECT0) {
		off2 = FUNC8(dfd, 0, SEEK_SET);
		if (off2 != 0)
			FUNC3(1, "lseek(2) to sector 0");
		FUNC15(buf, sector_size);
		i = FUNC21(dfd, buf, sector_size);
		if (i != (int)sector_size)
			FUNC3(1, "write sector 0");
	}

	/* <random_flush> */
	p = FUNC13(params, "random_flush");
	if (p != NULL) {
		off = first_sector * sector_size;
		off2 = FUNC8(dfd, off, SEEK_SET);
		if (off2 != off)
			FUNC3(1, "lseek(2) to first_sector");
		off2 = last_sector * sector_size;
		while (off <= off2) {
			FUNC15(buf, sector_size);
			i = FUNC21(dfd, buf, sector_size);
			if (i != (int)sector_size)
				FUNC3(1, "write to $device_name");
			off += sector_size;
		}
	}

	FUNC15(gl->mkey, sizeof gl->mkey);
	FUNC15(gl->salt, sizeof gl->salt);

	return;
}