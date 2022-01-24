#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_3__ {int fp; } ;
typedef  TYPE_1__ HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(HTAB *hashp)
{
	sigset_t set, oset;
	int len;
	char *envtmp = NULL;
	char path[MAXPATHLEN];

	if (FUNC2() == 0)
		envtmp = FUNC1("TMPDIR");
	len = FUNC5(path,
	    sizeof(path), "%s/_hash.XXXXXX", envtmp ? envtmp : "/tmp");
	if (len < 0 || len >= (int)sizeof(path)) {
		errno = ENAMETOOLONG;
		return (-1);
	}

	/* Block signals; make sure file goes away at process exit. */
	(void)FUNC4(&set);
	(void)FUNC0(SIG_BLOCK, &set, &oset);
	if ((hashp->fp = FUNC3(path, O_CLOEXEC)) != -1)
		(void)FUNC6(path);
	(void)FUNC0(SIG_SETMASK, &oset, (sigset_t *)NULL);
	return (hashp->fp != -1 ? 0 : -1);
}