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
struct syscall_desc {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct syscall_desc*,char**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct syscall_desc* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	struct syscall_desc *scall;
	unsigned int n;
	char *gids, *endp;
	int uid, umsk, ch;

	uid = -1;
	gids = NULL;
	umsk = 0;

	while ((ch = FUNC4(argc, argv, "g:u:U:")) != -1) {
		switch(ch) {
		case 'g':
			gids = optarg;
			break;
		case 'u':
			uid = (int)FUNC9(optarg, &endp, 0);
			if (*endp != '\0' && !FUNC5((unsigned char)*endp)) {
				FUNC3(stderr, "invalid uid '%s' - number "
				    "expected\n", optarg);
				FUNC1(1);
			}
			break;
		case 'U':
			umsk = (int)FUNC9(optarg, &endp, 0);
			if (*endp != '\0' && !FUNC5((unsigned char)*endp)) {
				FUNC3(stderr, "invalid umask '%s' - number "
				    "expected\n", optarg);
				FUNC1(1);
			}
			break;
		default:
			FUNC11();
		}
	}
	argc -= optind;
	argv += optind;

	if (argc < 1) {
		FUNC3(stderr, "too few arguments\n");
		FUNC11();
	}

	if (gids != NULL) {
		FUNC3(stderr, "changing groups to %s\n", gids);
		FUNC6(gids);
	}
	if (uid != -1) {
		FUNC3(stderr, "changing uid to %d\n", uid);
		if (FUNC7(uid) < 0) {
			FUNC3(stderr, "cannot change uid: %s\n",
			    FUNC8(errno));
			FUNC1(1);
		}
	}

	/* Change umask to requested value or to 0, if not requested. */
	FUNC10(umsk);

	for (;;) {
		scall = FUNC2(argv[0]);
		if (scall == NULL) {
			FUNC3(stderr, "syscall '%s' not supported\n",
			    argv[0]);
			FUNC1(1);
		}
		argc++;
		argv++;
		n = FUNC0(scall, argv);
		argc += n;
		argv += n;
		if (argv[0] == NULL)
			break;
		argc++;
		argv++;
	}

	FUNC1(0);
}