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
struct shlib_list {struct shlib_list* next; int /*<<< orphan*/  ndewey; int /*<<< orphan*/  dewey; void* path; void* name; } ;
struct hints_header {scalar_t__ hh_version; long hh_ehints; int hh_strtab; int hh_dirlist; int hh_nbucket; int hh_hashtab; long hh_strtab_sz; scalar_t__ hh_magic; } ;
struct hints_bucket {long hi_namex; long hi_pathx; int /*<<< orphan*/  hi_ndewey; int /*<<< orphan*/  hi_dewey; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hints_header) ; 
 scalar_t__ LD_HINTS_VERSION_1 ; 
 scalar_t__ LD_HINTS_VERSION_2 ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 long PAGE_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hints_bucket*) ; 
 int /*<<< orphan*/  hints_file ; 
 struct hints_bucket* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct hints_bucket*,char*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,long) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rescan ; 
 struct shlib_list** shlib_tail ; 
 void* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,long,...) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int
FUNC16(void)
{
	int			fd;
	void			*addr;
	long			fsize;
	long			msize;
	struct hints_header	*hdr;
	struct hints_bucket	*blist;
	char			*strtab;
	struct shlib_list	*shp;
	int			i;

	if ((fd = FUNC11(hints_file, O_RDONLY, 0)) == -1) {
		FUNC13("%s", hints_file);
		return -1;
	}

	msize = PAGE_SIZE;
	addr = FUNC9(0, msize, PROT_READ, MAP_PRIVATE, fd, 0);

	if (addr == MAP_FAILED) {
		FUNC13("%s", hints_file);
		return -1;
	}

	hdr = (struct hints_header *)addr;
	if (FUNC0(*hdr)) {
		FUNC14("%s: bad magic: %lo", hints_file,
			(unsigned long)hdr->hh_magic);
		return -1;
	}

	if (hdr->hh_version != LD_HINTS_VERSION_1 &&
	    hdr->hh_version != LD_HINTS_VERSION_2) {
		FUNC14("unsupported version: %ld", (long)hdr->hh_version);
		return -1;
	}

	if (hdr->hh_ehints > msize) {
		fsize = hdr->hh_ehints;
		FUNC10(addr, msize);
		addr = FUNC9(0, fsize, PROT_READ, MAP_PRIVATE, fd, 0);
		if (addr == MAP_FAILED) {
			FUNC13("%s", hints_file);
			return -1;
		}
		hdr = (struct hints_header *)addr;
	}
	FUNC3(fd);

	strtab = (char *)addr + hdr->hh_strtab;

	if (hdr->hh_version >= LD_HINTS_VERSION_2)
		FUNC1(strtab + hdr->hh_dirlist);
	else if (rescan)
		FUNC5(1, "%s too old and does not contain the search path",
			hints_file);

	if (rescan)
		return 0;

	blist = FUNC7(sizeof(*blist) * hdr->hh_nbucket);
	if (blist == NULL)
		FUNC4(1, "readhints");
	FUNC8(blist, (char *)addr + hdr->hh_hashtab,
		sizeof(*blist) * hdr->hh_nbucket);


	for (i = 0; i < hdr->hh_nbucket; i++) {
		struct hints_bucket	*bp = &blist[i];

		/* Sanity check */
		if (bp->hi_namex >= hdr->hh_strtab_sz) {
			FUNC14("bad name index: %#x", bp->hi_namex);
			FUNC6(blist);
			return -1;
		}
		if (bp->hi_pathx >= hdr->hh_strtab_sz) {
			FUNC14("bad path index: %#x", bp->hi_pathx);
			FUNC6(blist);
			return -1;
		}

		/* Allocate new list element */
		shp = (struct shlib_list *)FUNC15(sizeof *shp);
		shp->name = FUNC12(strtab + bp->hi_namex);
		shp->path = FUNC12(strtab + bp->hi_pathx);
		FUNC2(bp->hi_dewey, shp->dewey, sizeof(shp->dewey));
		shp->ndewey = bp->hi_ndewey;
		shp->next = NULL;

		*shlib_tail = shp;
		shlib_tail = &shp->next;
	}

	FUNC6(blist);
	return 0;
}