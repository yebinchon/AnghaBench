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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  L_Mutex ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  listenfd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sockpath ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11()
{
	(void) FUNC7(&L_Mutex);
	if (FUNC2(listenfd))
	{
#if NETUNIX
		bool removable;
		struct stat sockinfo;
		struct stat fileinfo;

		removable = sockpath != NULL &&
			    geteuid() != 0 &&
			    fstat(listenfd, &sockinfo) == 0 &&
			    (S_ISFIFO(sockinfo.st_mode)
# ifdef S_ISSOCK
			     || S_ISSOCK(sockinfo.st_mode)
# endif /* S_ISSOCK */
			    );
#endif /* NETUNIX */

		(void) FUNC3(listenfd);
		listenfd = INVALID_SOCKET;

#if NETUNIX
		/* XXX sleep() some time before doing this? */
		if (sockpath != NULL)
		{
			if (removable &&
			    stat(sockpath, &fileinfo) == 0 &&
			    ((fileinfo.st_dev == sockinfo.st_dev &&
			      fileinfo.st_ino == sockinfo.st_ino)
# ifdef S_ISSOCK
			     || S_ISSOCK(fileinfo.st_mode)
# endif /* S_ISSOCK */
			    )
			    &&
			    (S_ISFIFO(fileinfo.st_mode)
# ifdef S_ISSOCK
			     || S_ISSOCK(fileinfo.st_mode)
# endif /* S_ISSOCK */
			     ))
				(void) unlink(sockpath);
			free(sockpath);
			sockpath = NULL;
		}
#endif /* NETUNIX */
	}
	(void) FUNC8(&L_Mutex);
}