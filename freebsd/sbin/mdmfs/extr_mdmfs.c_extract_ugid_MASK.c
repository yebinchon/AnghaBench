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
struct passwd {scalar_t__ pw_uid; } ;
struct mtpt_info {scalar_t__ mi_uid; scalar_t__ mi_gid; int mi_have_uid; int mi_have_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct group* FUNC3 (char*) ; 
 struct passwd* FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char**,char*) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(const char *str, struct mtpt_info *mip)
{
	char *ug;			/* Writable 'str'. */
	char *user, *group;		/* Result of extracton. */
	struct passwd *pw;
	struct group *gr;
	char *p;
	uid_t *uid;
	gid_t *gid;

	uid = &mip->mi_uid;
	gid = &mip->mi_gid;
	mip->mi_have_uid = mip->mi_have_gid = false;

	/* Extract the user and group from 'str'.  Format above. */
	ug = FUNC5(str);
	FUNC0(ug != NULL);
	group = ug;
	user = FUNC6(&group, ":");
	if (user == NULL || group == NULL || *user == '\0' || *group == '\0')
		FUNC8();

	/* Derive uid. */
	*uid = FUNC7(user, &p, 10);
	if (*uid == (uid_t)ULONG_MAX)
		FUNC8();
	if (*p != '\0') {
		pw = FUNC4(user);
		if (pw == NULL)
			FUNC1(1, "invalid user: %s", user);
		*uid = pw->pw_uid;
	}
	mip->mi_have_uid = true;

	/* Derive gid. */
	*gid = FUNC7(group, &p, 10);
	if (*gid == (gid_t)ULONG_MAX)
		FUNC8();
	if (*p != '\0') {
		gr = FUNC3(group);
		if (gr == NULL)
			FUNC1(1, "invalid group: %s", group);
		*gid = gr->gr_gid;
	}
	mip->mi_have_gid = true;

	FUNC2(ug);
}