#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ va_type; int /*<<< orphan*/  va_gid; scalar_t__ va_uid; } ;
struct puffs_node {TYPE_1__ pn_va; int /*<<< orphan*/ * pn_mnt; } ;
struct puffs_cn {int /*<<< orphan*/  pcn_namelen; int /*<<< orphan*/  pcn_name; int /*<<< orphan*/  pcn_cred; } ;
struct dtfs_mount {int /*<<< orphan*/  dtm_nextfileid; } ;
struct dtfs_file {struct puffs_node* df_dotdot; } ;
struct dtfs_dirent {struct puffs_node* dfd_parent; int /*<<< orphan*/  dfd_name; int /*<<< orphan*/  dfd_namelen; struct puffs_node* dfd_node; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct puffs_node*,struct dtfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct dtfs_file* FUNC3 () ; 
 struct dtfs_file* FUNC4 () ; 
 struct dtfs_dirent* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct dtfs_mount* FUNC9 (struct puffs_node*) ; 
 struct puffs_node* FUNC10 (int /*<<< orphan*/ *,struct dtfs_file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

struct puffs_node *
FUNC12(struct puffs_node *dir, const struct puffs_cn *pcn,
	enum vtype type)
{
	struct dtfs_file *dff;
	struct dtfs_dirent *dfd;
	struct dtfs_mount *dtm;
	struct puffs_node *newpn;
	uid_t uid;
	int rv;

	FUNC0(dir->pn_va.va_type == VDIR);
	FUNC0(dir->pn_mnt != NULL);

	uid = 0;
	rv = FUNC8(pcn->pcn_cred, &uid);
	FUNC0(rv == 0);

	if (type == VDIR) {
		dff = FUNC3();
		dff->df_dotdot = dir;
	} else
		dff = FUNC4();

	dtm = FUNC9(dir);
	newpn = FUNC10(dir->pn_mnt, dff);
	if (newpn == NULL)
		FUNC6(1, "getnewpnode");
	FUNC2(&newpn->pn_va, type, dtm->dtm_nextfileid++);

	dfd = FUNC5(sizeof(struct dtfs_dirent));
	dfd->dfd_node = newpn;
	dfd->dfd_name = FUNC7(pcn->pcn_name, pcn->pcn_namelen);
	dfd->dfd_namelen = FUNC11(dfd->dfd_name);
	dfd->dfd_parent = dir;
	FUNC1(dir, dfd);

	newpn->pn_va.va_uid = uid;
	newpn->pn_va.va_gid = dir->pn_va.va_gid;

	return newpn;
}