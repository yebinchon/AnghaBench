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
typedef  int /*<<< orphan*/  sv ;
struct puffstestargs {int pta_pflags; int* pta_dir; int* pta_dev; int pta_pargslen; int* pta_pargs; int pta_servfd; int /*<<< orphan*/  pta_childpid; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  mntflags ;
typedef  int /*<<< orphan*/  len ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 size_t MAXPATHLEN ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  childfail ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int errno ; 
 int FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct puffstestargs*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,char const*,int) ; 
 struct puffstestargs* theargs ; 
 int FUNC11 (int,...) ; 

__attribute__((used)) static int
FUNC12(const atf_tc_t *tc, void **argp,
	const char *image, off_t size, void *fspriv, char **theargv)
{
	struct puffstestargs *args;
	pid_t childpid;
	int *pflags;
	char comfd[16];
	int sv[2];
	int mntflags;
	size_t len;
	ssize_t n;

	*argp = NULL;

	args = FUNC4(sizeof(*args));
	if (args == NULL)
		return errno;
	FUNC5(args, 0, sizeof(*args));

	pflags = &args->pta_pflags;

	/* Create sucketpair for communication with the real file server */
	if (FUNC9(PF_LOCAL, SOCK_STREAM, 0, sv) == -1)
		return errno;

	FUNC7(SIGCHLD, childfail);

	switch ((childpid = FUNC3())) {
	case 0:
		FUNC0(sv[1]);
		FUNC8(comfd, sizeof(sv[0]), "%d", sv[0]);
		if (FUNC6("PUFFS_COMFD", comfd, 1) == -1)
			return errno;

		if (FUNC2(theargv[0], theargv) == -1)
			return errno;
	case -1:
		return errno;
	default:
		FUNC0(sv[0]);
		break;
	}

	/* read args */
	if ((n = FUNC11(sv[1], &len, sizeof(len))) != sizeof(len))
		FUNC1(1, "mp 1 %zd", n);
	if (len > MAXPATHLEN)
		FUNC1(1, "mntpath > MAXPATHLEN");
	if ((size_t)FUNC11(sv[1], args->pta_dir, len) != len)
		FUNC1(1, "mp 2");
	if (FUNC11(sv[1], &len, sizeof(len)) != sizeof(len))
		FUNC1(1, "fn 1");
	if (len > MAXPATHLEN)
		FUNC1(1, "devpath > MAXPATHLEN");
	if ((size_t)FUNC11(sv[1], args->pta_dev, len) != len)
		FUNC1(1, "fn 2");
	if (FUNC11(sv[1], &mntflags, sizeof(mntflags)) != sizeof(mntflags))
		FUNC1(1, "mntflags");
	if (FUNC11(sv[1], &args->pta_pargslen, sizeof(args->pta_pargslen))
	    != sizeof(args->pta_pargslen))
		FUNC1(1, "puffstest_args len");
	args->pta_pargs = FUNC4(args->pta_pargslen);
	if (args->pta_pargs == NULL)
		FUNC1(1, "malloc");
	if (FUNC11(sv[1], args->pta_pargs, args->pta_pargslen)
	    != (ssize_t)args->pta_pargslen)
		FUNC1(1, "puffstest_args");
	if (FUNC11(sv[1], pflags, sizeof(*pflags)) != sizeof(*pflags))
		FUNC1(1, "pflags");

	args->pta_childpid = childpid;
	args->pta_servfd = sv[1];
	FUNC10(args->pta_dev, image, sizeof(args->pta_dev));

	*argp = theargs = args;

	return 0;
}