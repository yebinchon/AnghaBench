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
struct passwd {char* pw_name; } ;
struct intstr {char* s; int i; } ;
struct group {char* gr_name; } ;
struct devfs_rule {int dr_icond; int dr_dswflags; char* dr_pathptrn; int dr_iacts; int dr_bacts; int dr_uid; int dr_gid; int dr_mode; int dr_incset; int /*<<< orphan*/  dr_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DRA_BACTS ; 
 int DRA_GID ; 
 int DRA_INCSET ; 
 int DRA_MODE ; 
 int DRA_UID ; 
 int DRB_HIDE ; 
 int DRB_UNHIDE ; 
 int DRC_DSWFLAGS ; 
 int DRC_PATHPTRN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct group* FUNC1 (int) ; 
 struct passwd* FUNC2 (int) ; 
 struct intstr* ist_type ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(FILE *fp, struct devfs_rule *dr)
{
	struct intstr *is;
	struct passwd *pw;
	struct group *gr;

	FUNC0(fp, "%d", FUNC3(dr->dr_id));

	if (dr->dr_icond & DRC_DSWFLAGS)
		for (is = ist_type; is->s != NULL; ++is)
			if (dr->dr_dswflags & is->i)
				FUNC0(fp, " type %s", is->s);
	if (dr->dr_icond & DRC_PATHPTRN)
		FUNC0(fp, " path %s", dr->dr_pathptrn);

	if (dr->dr_iacts & DRA_BACTS) {
		if (dr->dr_bacts & DRB_HIDE)
			FUNC0(fp, " hide");
		if (dr->dr_bacts & DRB_UNHIDE)
			FUNC0(fp, " unhide");
	}
	if (dr->dr_iacts & DRA_UID) {
		pw = FUNC2(dr->dr_uid);
		if (pw == NULL)
			FUNC0(fp, " user %d", dr->dr_uid);
		else
			FUNC0(fp, " user %s", pw->pw_name);
	}
	if (dr->dr_iacts & DRA_GID) {
		gr = FUNC1(dr->dr_gid);
		if (gr == NULL)
			FUNC0(fp, " group %d", dr->dr_gid);
		else
			FUNC0(fp, " group %s", gr->gr_name);
	}
	if (dr->dr_iacts & DRA_MODE)
		FUNC0(fp, " mode %o", dr->dr_mode);
	if (dr->dr_iacts & DRA_INCSET)
		FUNC0(fp, " include %d", dr->dr_incset);

	FUNC0(fp, "\n");
}