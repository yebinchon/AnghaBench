#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtableheader {long volno; size_t maxino; size_t entrytblsize; long stringsize; int /*<<< orphan*/  ntrec; int /*<<< orphan*/  dumpdate; int /*<<< orphan*/  dumptime; } ;
struct entry {char* e_name; scalar_t__ e_index; struct entry* e_next; struct entry* e_entries; struct entry* e_sibling; struct entry* e_links; struct entry* e_parent; int /*<<< orphan*/  e_namlen; } ;
typedef  size_t ino_t ;
struct TYPE_2__ {scalar_t__ e_index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ Nflag ; 
 size_t UFS_WINO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  dumpdate ; 
 int /*<<< orphan*/  dumptime ; 
 TYPE_1__** entry ; 
 size_t entrytblsize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 struct entry* FUNC8 (size_t) ; 
 size_t maxino ; 
 int /*<<< orphan*/  FUNC9 (struct entry*,struct entry*,long) ; 
 int /*<<< orphan*/  ntrec ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

void
FUNC13(char *filename, long checkpt)
{
	struct entry *ep, *tep;
	ino_t i;
	struct entry temp, *tentry;
	long mynum = 1, stroff = 0;
	FILE *fd;
	struct symtableheader hdr;

	FUNC12(stdout, "Checkpointing the restore\n");
	if (Nflag)
		return;
	if ((fd = FUNC5(filename, "w")) == NULL) {
		FUNC6(stderr, "fopen: %s\n", FUNC11(errno));
		FUNC10("cannot create save file %s for symbol table\n",
			filename);
		FUNC2(1);
	}
	FUNC1(fd);
	/*
	 * Assign indices to each entry
	 * Write out the string entries
	 */
	for (i = UFS_WINO; i <= maxino; i++) {
		for (ep = FUNC8(i); ep != NULL; ep = ep->e_links) {
			ep->e_index = mynum++;
			(void) FUNC7(ep->e_name, sizeof(char),
			       (int)FUNC0(ep->e_namlen), fd);
		}
	}
	/*
	 * Convert pointers to indexes, and output
	 */
	tep = &temp;
	stroff = 0;
	for (i = UFS_WINO; i <= maxino; i++) {
		for (ep = FUNC8(i); ep != NULL; ep = ep->e_links) {
			FUNC9(tep, ep, (long)sizeof(struct entry));
			tep->e_name = (char *)stroff;
			stroff += FUNC0(ep->e_namlen);
			tep->e_parent = (struct entry *)ep->e_parent->e_index;
			if (ep->e_links != NULL)
				tep->e_links =
					(struct entry *)ep->e_links->e_index;
			if (ep->e_sibling != NULL)
				tep->e_sibling =
					(struct entry *)ep->e_sibling->e_index;
			if (ep->e_entries != NULL)
				tep->e_entries =
					(struct entry *)ep->e_entries->e_index;
			if (ep->e_next != NULL)
				tep->e_next =
					(struct entry *)ep->e_next->e_index;
			(void) FUNC7((char *)tep, sizeof(struct entry), 1, fd);
		}
	}
	/*
	 * Convert entry pointers to indexes, and output
	 */
	for (i = 0; i < entrytblsize; i++) {
		if (entry[i] == NULL)
			tentry = NULL;
		else
			tentry = (struct entry *)entry[i]->e_index;
		(void) FUNC7((char *)&tentry, sizeof(struct entry *), 1, fd);
	}
	hdr.volno = checkpt;
	hdr.maxino = maxino;
	hdr.entrytblsize = entrytblsize;
	hdr.stringsize = stroff;
	hdr.dumptime = dumptime;
	hdr.dumpdate = dumpdate;
	hdr.ntrec = ntrec;
	(void) FUNC7((char *)&hdr, sizeof(struct symtableheader), 1, fd);
	if (FUNC4(fd)) {
		FUNC6(stderr, "fwrite: %s\n", FUNC11(errno));
		FUNC10("output error to file %s writing symbol table\n",
			filename);
	}
	(void) FUNC3(fd);
}