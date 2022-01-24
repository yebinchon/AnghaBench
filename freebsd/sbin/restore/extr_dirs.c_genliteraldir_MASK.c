#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct inotab {int t_size; int /*<<< orphan*/  t_seekpt; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_5__ {int /*<<< orphan*/  name; scalar_t__ ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  dd_fd; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int FAIL ; 
 int GOOD ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  Nflag ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__ curfile ; 
 TYPE_1__* dirp ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 struct inotab* FUNC6 (scalar_t__) ; 
 int FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,int) ; 

int
FUNC13(char *name, ino_t ino)
{
	struct inotab *itp;
	int ofile, dp, i, size;
	char buf[BUFSIZ];

	itp = FUNC6(ino);
	if (itp == NULL)
		FUNC8("Cannot find directory inode %ju named %s\n",
		    (uintmax_t)ino, name);
	if ((ofile = FUNC7(name, O_WRONLY | O_CREAT | O_TRUNC, 0666)) < 0) {
		FUNC5(stderr, "%s: ", name);
		(void) FUNC4(stderr);
		FUNC5(stderr, "cannot create file: %s\n", FUNC11(errno));
		return (FAIL);
	}
	FUNC10(dirp, itp->t_seekpt, itp->t_seekpt);
	dp = FUNC3(dirp->dd_fd);
	for (i = itp->t_size; i > 0; i -= BUFSIZ) {
		size = FUNC0(i, BUFSIZ);
		if (FUNC9(dp, buf, (int) size) == -1) {
			FUNC5(stderr,
			    "write error extracting inode %s, name %d\n",
			    (uintmax_t)curfile.ino, curfile.name);
			FUNC5(stderr, "read: %s\n", FUNC11(errno));
			FUNC2(1);
		}
		if (!Nflag && FUNC12(ofile, buf, (int) size) == -1) {
			FUNC5(stderr,
			    "write error extracting inode %s, name %d\n",
			    (uintmax_t)curfile.ino, curfile.name);
			FUNC5(stderr, "write: %s\n", FUNC11(errno));
			FUNC2(1);
		}
	}
	(void) FUNC1(dp);
	(void) FUNC1(ofile);
	return (GOOD);
}