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
struct symtableheader {int maxino; int entrytblsize; int stringsize; int /*<<< orphan*/  volno; int /*<<< orphan*/  ntrec; int /*<<< orphan*/  dumpdate; int /*<<< orphan*/  dumptime; } ;
struct stat {int st_size; } ;
struct entry {char* e_name; struct entry* e_next; struct entry* e_entries; struct entry* e_links; struct entry* e_sibling; struct entry* e_parent; int /*<<< orphan*/  e_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int HASHFACTOR ; 
 int /*<<< orphan*/  NEW ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SKIP ; 
 int /*<<< orphan*/  UFS_ROOTINO ; 
 struct entry* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bflag ; 
 void* FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int command ; 
 TYPE_1__ curfile ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  dumpdate ; 
 int /*<<< orphan*/  dumptime ; 
 struct entry** entry ; 
 int entrytblsize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int maxino ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

void
FUNC13(char *filename)
{
	char *base;
	long tblsize;
	struct entry *ep;
	struct entry *baseep, *lep;
	struct symtableheader hdr;
	struct stat stbuf;
	long i;
	int fd;

	FUNC12(stdout, "Initialize symbol table.\n");
	if (filename == NULL) {
		entrytblsize = maxino / HASHFACTOR;
		entry = FUNC1((unsigned)entrytblsize, sizeof(struct entry *));
		if (entry == NULL)
			FUNC9("no memory for entry table\n");
		ep = FUNC0(".", UFS_ROOTINO, NODE);
		ep->e_flags |= NEW;
		return;
	}
	if ((fd = FUNC8(filename, O_RDONLY, 0)) < 0) {
		FUNC4(stderr, "open: %s\n", FUNC11(errno));
		FUNC9("cannot open symbol table file %s\n", filename);
	}
	if (FUNC5(fd, &stbuf) < 0) {
		FUNC4(stderr, "stat: %s\n", FUNC11(errno));
		FUNC9("cannot stat symbol table file %s\n", filename);
	}
	tblsize = stbuf.st_size - sizeof(struct symtableheader);
	base = FUNC1(sizeof(char), (unsigned)tblsize);
	if (base == NULL)
		FUNC9("cannot allocate space for symbol table\n");
	if (FUNC10(fd, base, (int)tblsize) < 0 ||
	    FUNC10(fd, (char *)&hdr, sizeof(struct symtableheader)) < 0) {
		FUNC4(stderr, "read: %s\n", FUNC11(errno));
		FUNC9("cannot read symbol table file %s\n", filename);
	}
	(void)FUNC2(fd);
	switch (command) {
	case 'r':
		/*
		 * For normal continuation, insure that we are using
		 * the next incremental tape
		 */
		if (hdr.dumpdate != dumptime) {
			if (hdr.dumpdate < dumptime)
				FUNC4(stderr, "Incremental tape too low\n");
			else
				FUNC4(stderr, "Incremental tape too high\n");
			FUNC3(1);
		}
		break;
	case 'R':
		/*
		 * For restart, insure that we are using the same tape
		 */
		curfile.action = SKIP;
		dumptime = hdr.dumptime;
		dumpdate = hdr.dumpdate;
		if (!bflag)
			FUNC7(hdr.ntrec);
		FUNC6(hdr.volno);
		break;
	default:
		FUNC9("initsymtable called from command %c\n", command);
		break;
	}
	maxino = hdr.maxino;
	entrytblsize = hdr.entrytblsize;
	entry = (struct entry **)
		(base + tblsize - (entrytblsize * sizeof(struct entry *)));
	baseep = (struct entry *)(base + hdr.stringsize - sizeof(struct entry));
	lep = (struct entry *)entry;
	for (i = 0; i < entrytblsize; i++) {
		if (entry[i] == NULL)
			continue;
		entry[i] = &baseep[(long)entry[i]];
	}
	for (ep = &baseep[1]; ep < lep; ep++) {
		ep->e_name = base + (long)ep->e_name;
		ep->e_parent = &baseep[(long)ep->e_parent];
		if (ep->e_sibling != NULL)
			ep->e_sibling = &baseep[(long)ep->e_sibling];
		if (ep->e_links != NULL)
			ep->e_links = &baseep[(long)ep->e_links];
		if (ep->e_entries != NULL)
			ep->e_entries = &baseep[(long)ep->e_entries];
		if (ep->e_next != NULL)
			ep->e_next = &baseep[(long)ep->e_next];
	}
}