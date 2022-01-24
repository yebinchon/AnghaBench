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
typedef  scalar_t__ uid_t ;
struct stat {scalar_t__ st_uid; int st_mode; } ;
typedef  enum rc { ____Placeholder_rc } rc ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int NOEXIST ; 
 int NOPERM ; 
 int RCOK ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char) ; 

__attribute__((used)) static enum rc
FUNC9(SCR *sp, struct stat *sbp, char *path, int rootown, int rootid)
{
	enum { ROOTOWN, OWN, WRITER } etype;
	uid_t euid;
	int nf1, nf2;
	char *a, *b, *buf;

	/* Check for the file's existence. */
	if (FUNC7(path, sbp))
		return (NOEXIST);

	/* Check ownership permissions. */
	euid = FUNC3();
	if (!(rootown && sbp->st_uid == 0) &&
	    !(rootid && euid == 0) && sbp->st_uid != euid) {
		etype = rootown ? ROOTOWN : OWN;
		goto denied;
	}

	/* Check writeability. */
	if (sbp->st_mode & (S_IWGRP | S_IWOTH)) {
		etype = WRITER;
		goto denied;
	}
	return (RCOK);

denied:	a = FUNC5(sp, path, &nf1);
	if (FUNC8(path, '/') == NULL && (buf = FUNC2(NULL, 0)) != NULL) {
		char *p;

		b = FUNC5(sp, buf, &nf2);
		if ((p = FUNC4(b, a)) == NULL) {
			FUNC6(sp, M_SYSERR, NULL);
			goto err;
		}
		switch (etype) {
		case ROOTOWN:
			FUNC6(sp, M_ERR,
			    "128|%s: not sourced: not owned by you or root", p);
			break;
		case OWN:
			FUNC6(sp, M_ERR,
			    "129|%s: not sourced: not owned by you", p);
			break;
		case WRITER:
			FUNC6(sp, M_ERR,
    "130|%s: not sourced: writeable by a user other than the owner", p);
			break;
		}
		FUNC1(p);
err:		FUNC1(buf);
		if (nf2)
			FUNC0(sp, b, 0);
	} else
		switch (etype) {
		case ROOTOWN:
			FUNC6(sp, M_ERR,
			    "128|%s: not sourced: not owned by you or root", a);
			break;
		case OWN:
			FUNC6(sp, M_ERR,
			    "129|%s: not sourced: not owned by you", a);
			break;
		case WRITER:
			FUNC6(sp, M_ERR,
	    "130|%s: not sourced: writeable by a user other than the owner", a);
			break;
		}

	if (nf1)
		FUNC0(sp, a, 0);
	return (NOPERM);
}