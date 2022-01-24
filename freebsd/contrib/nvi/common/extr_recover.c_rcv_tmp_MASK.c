#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_4__ {char* rcv_path; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ EXF ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  F_RCV_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_RECDIR ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int S_ISVTX ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 

int
FUNC12(
	SCR *sp,
	EXF *ep,
	char *name)
{
	struct stat sb;
	int fd;
	char *dp, *path;

	/*
	 * !!!
	 * ep MAY NOT BE THE SAME AS sp->ep, DON'T USE THE LATTER.
	 *
	 *
	 * If the recovery directory doesn't exist, try and create it.  As
	 * the recovery files are themselves protected from reading/writing
	 * by other than the owner, the worst that can happen is that a user
	 * would have permission to remove other user's recovery files.  If
	 * the sticky bit has the BSD semantics, that too will be impossible.
	 */
	if (FUNC9(sp, O_RECDIR, 0))
		goto err;
	dp = FUNC1(sp, O_RECDIR);
	if (FUNC11(dp, &sb)) {
		if (errno != ENOENT || FUNC7(dp, 0)) {
			FUNC8(sp, M_SYSERR, "%s", dp);
			goto err;
		}
		(void)FUNC2(dp, S_IRWXU | S_IRWXG | S_IRWXO | S_ISVTX);
	}

	if ((path = FUNC6(dp, "vi.XXXXXX")) == NULL)
		goto err;
	if ((fd = FUNC10(sp, path, dp)) == -1) {
		FUNC5(path);
		goto err;
	}
	(void)FUNC4(fd, S_IRWXU);
	(void)FUNC3(fd);

	ep->rcv_path = path;
	if (0) {
err:		FUNC8(sp, M_ERR,
		    "056|Modifications not recoverable if the session fails");
		return (1);
	}

	/* We believe the file is recoverable. */
	FUNC0(ep, F_RCV_ON);
	return (0);
}