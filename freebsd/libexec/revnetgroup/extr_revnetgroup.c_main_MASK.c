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
struct member_entry {char* key; char* domain; struct member_entry* next; struct grouplist* groups; } ;
struct grouplist {char* groupname; struct grouplist* next; } ;
struct group_entry {struct group_entry* next; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  readbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINSIZ ; 
 int TABLESIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char**,char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int FUNC8 (int,char**,char*) ; 
 struct group_entry** gtable ; 
 int /*<<< orphan*/  FUNC9 (struct member_entry**,char*,int /*<<< orphan*/ ,char*) ; 
 struct member_entry** mtable ; 
 char* netgroup ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC11 (struct group_entry**,char*,char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char *argv[])
{
	FILE *fp;
	char readbuf[LINSIZ];
	struct group_entry *gcur;
	struct member_entry *mcur;
	char *host, *user, *domain;
	int ch;
	char *key = NULL, *data = NULL;
	int hosts = -1, i;

	if (argc < 2)
		FUNC15();

	while ((ch = FUNC8(argc, argv, "uhf:")) != -1) {
		switch(ch) {
		case 'u':
			if (hosts != -1) {
				FUNC16("please use only one of -u or -h");
				FUNC15();
			}
			hosts = 0;
			break;
		case 'h':
			if (hosts != -1) {
				FUNC16("please use only one of -u or -h");
				FUNC15();
			}
			hosts = 1;
			break;
		case 'f':
			netgroup = optarg;
			break;
		default:
			FUNC15();
			break;
		}
	}

	if (hosts == -1)
		FUNC15();

	if (FUNC12(netgroup, "-")) {
		if ((fp = FUNC7(netgroup, "r")) == NULL) {
			FUNC3(1, "%s", netgroup);
		}
	} else {
		fp = stdin;
	}

	/* Stuff all the netgroup names and members into a hash table. */
	while (FUNC6(readbuf, LINSIZ, fp)) {
		if (readbuf[0] == '#')
			continue;
		/* handle backslash line continuations */
		while(readbuf[FUNC13(readbuf) - 2] == '\\') {
			FUNC6((char *)&readbuf[FUNC13(readbuf) - 2],
					sizeof(readbuf) - FUNC13(readbuf), fp);
		}
		data = NULL;
		if ((data = (char *)(FUNC14(readbuf, " \t") + 1)) < (char *)2)
			continue;
		key = (char *)&readbuf;
		*(data - 1) = '\0';
		FUNC11(gtable, key, data);
	}

	FUNC5(fp);

	/*
	 * Find all members of each netgroup and keep track of which
	 * group they belong to.
	 */
	for (i = 0; i < TABLESIZE; i++) {
		gcur = gtable[i];
		while(gcur) {
			FUNC2(gcur->key);
			while(FUNC1(&host, &user, &domain) != 0) {
				if (hosts ? host && FUNC12(host,"-") : user && FUNC12(user, "-"))
					FUNC9(mtable, hosts ? host : user, gcur->key, domain);
			}
			gcur = gcur->next;
		}
	}

	/* Release resources used by the netgroup parser code. */
	FUNC0();

	/* Spew out the results. */
	for (i = 0; i < TABLESIZE; i++) {
		mcur = mtable[i];
		while(mcur) {
			struct grouplist *tmp;
			FUNC10 ("%s.%s\t", mcur->key, mcur->domain);
			tmp = mcur->groups;
			while(tmp) {
				FUNC10 ("%s", tmp->groupname);
				tmp = tmp->next;
				if (tmp)
					FUNC10(",");
			}
			mcur = mcur->next;
			FUNC10 ("\n");
		}
	}

	/* Let the OS free all our resources. */
	FUNC4(0);
}