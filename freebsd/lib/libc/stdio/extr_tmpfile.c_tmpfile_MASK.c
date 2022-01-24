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
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  TRAILER ; 
 char* _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

FILE *
FUNC11(void)
{
	sigset_t set, oset;
	FILE *fp;
	int fd, sverrno;
#define	TRAILER	"tmp.XXXXXX"
	char *buf;
	const char *tmpdir;

	tmpdir = NULL;
	if (FUNC6() == 0)
		tmpdir = FUNC5("TMPDIR");
	if (tmpdir == NULL)
		tmpdir = _PATH_TMP;

	(void)FUNC2(&buf, "%s%s%d", tmpdir,
	    (tmpdir[FUNC9(tmpdir) - 1] == '/') ? "" : "/", TRAILER);
	if (buf == NULL)
		return (NULL);

	FUNC8(&set);
	(void)FUNC0(SIG_BLOCK, &set, &oset);

	fd = FUNC7(buf);
	if (fd != -1)
		(void)FUNC10(buf);

	FUNC4(buf);

	(void)FUNC0(SIG_SETMASK, &oset, NULL);

	if (fd == -1)
		return (NULL);

	if ((fp = FUNC3(fd, "w+")) == NULL) {
		sverrno = errno;
		(void)FUNC1(fd);
		errno = sverrno;
		return (NULL);
	}
	return (fp);
}