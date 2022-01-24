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
typedef  int /*<<< orphan*/  writebuf ;
typedef  char* u_long ;
struct grouplist {scalar_t__ groupid; struct grouplist* next; } ;
struct group {char** gr_mem; int /*<<< orphan*/  gr_gid; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINSIZ ; 
 char* OPSYS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct group* FUNC1 () ; 
 int /*<<< orphan*/ * _gr_fp ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  dtable ; 
 int /*<<< orphan*/  FUNC4 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (void*,char*) ; 
 int FUNC10 (int,char**,char*) ; 
 void* groupfile ; 
 void* hostsfile ; 
 struct grouplist* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtable ; 
 void* netidfile ; 
 void* optarg ; 
 void* passfile ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,char*,char*) ; 
 char* FUNC15 (char*,char) ; 
 char* FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,...) ; 
 scalar_t__ FUNC19 (char**) ; 

int
FUNC20(int argc, char *argv[])
{
	FILE *gfp, *pfp, *hfp, *nfp;
	char readbuf[LINSIZ];
	char writebuf[LINSIZ];
	struct group *gr;
	struct grouplist *glist;
	char *domain;
	int ch;
	gid_t i;
	char *ptr, *pidptr, *gidptr, *hptr;
	int quiet = 0;

	domain = NULL;
	while ((ch = FUNC10(argc, argv, "g:p:h:n:d:q")) != -1) {
		switch(ch) {
		case 'g':
			groupfile = optarg;
			break;
		case 'p':
			passfile = optarg;
			break;
		case 'h':
			hostsfile = optarg;
			break;
		case 'n':
			netidfile = optarg;
			break;
		case 'd':
			domain = optarg;
			break;
		case 'q':
			quiet++;
			break;
		default:
			FUNC17();
			break;
		}
	}

	if (domain == NULL) {
		if (FUNC19(&domain))
			FUNC5(1, "no domain name specified and default \
domain not set");
	}

	if ((gfp = FUNC9(groupfile, "r")) == NULL) {
		FUNC4(1, "%s", groupfile);
	}

	if ((pfp = FUNC9(passfile, "r")) == NULL) {
		FUNC4(1, "%s", passfile);
	}

	if ((hfp = FUNC9(hostsfile, "r")) == NULL) {
		FUNC4(1, "%s", hostsfile);
	}

	if ((nfp = FUNC9(netidfile, "r")) == NULL) {
		/* netid is optional -- just continue */
		nfp = NULL;
	}

	_gr_fp = gfp;

	/* Load all the group membership info into a hash table. */

	FUNC2();
	while((gr = FUNC1()) != NULL) {
		while(*gr->gr_mem) {
			FUNC12(mtable, *gr->gr_mem, gr->gr_gid, 0);
			gr->gr_mem++;
		}
	}

	FUNC7(gfp);
	FUNC0();

	/*
	 * Now parse the passwd database, spewing out the extra
	 * group information we just stored if necessary.
	 */
	while(FUNC8(readbuf, LINSIZ, pfp)) {
		/* Ignore comments: ^[ \t]*# */
		for (ptr = readbuf; *ptr != '\0'; ptr++)
			if (*ptr != ' ' && *ptr != '\t')
				break;
		if (*ptr == '#' || *ptr == '\0')
			continue;
		if ((ptr = FUNC15(readbuf, ':')) == NULL) {
			FUNC18("bad passwd file entry: %s", readbuf);
			continue;
		}
		*ptr = '\0';
		ptr++;
		if ((ptr = FUNC15(ptr, ':')) == NULL) {
			FUNC18("bad passwd file entry: %s", readbuf);
			continue;
		}
		*ptr = '\0';
		ptr++;
		pidptr = ptr;
		if ((ptr = FUNC15(ptr, ':')) == NULL) {
			FUNC18("bad passwd file entry: %s", readbuf);
			continue;
		}
		*ptr = '\0';
		ptr++;
		gidptr = ptr;
		if ((ptr = FUNC15(ptr, ':')) == NULL) {
			FUNC18("bad passwd file entry: %s", readbuf);
			continue;
		}
		*ptr = '\0';
		i = FUNC3(gidptr);

		FUNC14(writebuf, sizeof(writebuf), "%s.%s@%s", OPSYS,
							pidptr, domain);

		if (FUNC11(dtable, writebuf)) {
			if (!quiet)
				FUNC18("duplicate netid '%s.%s@%s' -- skipping",
						OPSYS, pidptr, domain);
			continue;
		} else {
			FUNC12(dtable, writebuf, 0, 1);
		}
		FUNC13("%s.%s@%s %s:%s", OPSYS, pidptr, domain, pidptr, gidptr);
		if ((glist = FUNC11(mtable, (char *)&readbuf)) != NULL) {
			while(glist) {
				if (glist->groupid != i)
					FUNC13(",%lu", (u_long)glist->groupid);
				glist = glist->next;
			}
		}
		FUNC13 ("\n");
	}	

	FUNC7(pfp);

	/*
	 * Now parse the hosts database (this part sucks).
	 */

	while ((ptr = FUNC8(readbuf, LINSIZ, hfp))) {
		if (*ptr == '#')
			continue;
		if (!(hptr = FUNC16(ptr, "#\n")))
			continue;
		*hptr = '\0';
		if (!(hptr = FUNC16(ptr, " \t")))
			continue;
		*hptr++ = '\0';
		ptr = hptr;
		while (*ptr == ' ' || *ptr == '\t')
			ptr++;
		if (!(hptr = FUNC16(ptr, " \t")))
			continue;
		*hptr++ = '\0';
		FUNC14(writebuf, sizeof(writebuf), "%s.%s@%s", OPSYS,
								ptr, domain);
		if (FUNC11(dtable, (char *)&writebuf)) {
			if (!quiet)
				FUNC18("duplicate netid '%s' -- skipping",
								writebuf);
			continue;
		} else {
			FUNC12(dtable, (char *)&writebuf, 0, 1);
		}
		FUNC13 ("%s.%s@%s 0:%s\n", OPSYS, ptr, domain, ptr);
	}

	FUNC7(hfp);

	/*
	 * Lastly, copy out any extra information in the netid
	 * file. If it's not open, just ignore it: it's optional anyway.
	 */

	if (nfp != NULL) {
		while(FUNC8(readbuf, LINSIZ, nfp)) {
			if (readbuf[0] == '#')
				continue;
			if ((ptr = FUNC16((char*)&readbuf, " \t")) == NULL) {
				FUNC18("bad netid entry: '%s'", readbuf);
				continue;
			}

			writebuf[0] = *ptr;
			*ptr = '\0';
			if (FUNC11(dtable, (char *)&readbuf)) {
				if (!quiet)
					FUNC18("duplicate netid '%s' -- skipping",
								readbuf);
				continue;
			} else {
				FUNC12(dtable, (char *)&readbuf, 0, 1);
			}
			*ptr = writebuf[0];
			FUNC13("%s",readbuf);
		}
		FUNC7(nfp);
	}

	FUNC6(0);
}