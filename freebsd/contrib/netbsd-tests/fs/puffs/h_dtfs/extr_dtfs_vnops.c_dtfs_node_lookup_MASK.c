#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct puffs_usermount {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mode; } ;
struct puffs_node {TYPE_2__ pn_va; } ;
struct puffs_newinfo {int dummy; } ;
struct puffs_cn {int pcn_flags; scalar_t__ pcn_nameiop; int /*<<< orphan*/  pcn_cred; int /*<<< orphan*/  pcn_namelen; int /*<<< orphan*/  pcn_name; } ;
struct dtfs_file {TYPE_3__* df_dotdot; } ;
struct dtfs_dirent {TYPE_3__* dfd_node; } ;
struct TYPE_5__ {scalar_t__ va_type; int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_size; } ;
struct TYPE_7__ {TYPE_1__ pn_va; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (void*) ; 
 int ENOENT ; 
 scalar_t__ NAMEI_CREATE ; 
 scalar_t__ NAMEI_DELETE ; 
 int NAMEI_ISLASTCN ; 
 scalar_t__ NAMEI_RENAME ; 
 scalar_t__ FUNC1 (struct puffs_cn const*) ; 
 int /*<<< orphan*/  PUFFS_VWRITE ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct dtfs_dirent* FUNC3 (struct dtfs_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct puffs_usermount*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct puffs_newinfo*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct puffs_newinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct puffs_newinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct puffs_newinfo*,scalar_t__) ; 

int
FUNC10(struct puffs_usermount *pu, void *opc,
	struct puffs_newinfo *pni, const struct puffs_cn *pcn)
{
	struct puffs_node *pn_dir = opc;
	struct dtfs_file *df = FUNC0(opc);
	struct dtfs_dirent *dfd;
	extern int straightflush;
	int rv;

	/* parent dir? */
	if (FUNC1(pcn)) {
		if (df->df_dotdot == NULL)
			return ENOENT;

		FUNC2(df->df_dotdot->pn_va.va_type == VDIR);
		FUNC6(pni, df->df_dotdot);
		FUNC9(pni, df->df_dotdot->pn_va.va_type);

		return 0;
	}

	dfd = FUNC3(df, pcn->pcn_name, pcn->pcn_namelen);
	if (dfd) {
		if ((pcn->pcn_flags & NAMEI_ISLASTCN) &&
		    (pcn->pcn_nameiop == NAMEI_DELETE)) {
			rv = FUNC4(VDIR, pn_dir->pn_va.va_mode,
			    pn_dir->pn_va.va_uid, pn_dir->pn_va.va_gid,
			    PUFFS_VWRITE, pcn->pcn_cred);
			if (rv)
				return rv;
		}
		FUNC6(pni, dfd->dfd_node);
		FUNC9(pni, dfd->dfd_node->pn_va.va_type);
		FUNC8(pni, dfd->dfd_node->pn_va.va_size);
		FUNC7(pni, dfd->dfd_node->pn_va.va_rdev);

		if (straightflush)
			FUNC5(pu, dfd->dfd_node);

		return 0;
	}

	if ((pcn->pcn_flags & NAMEI_ISLASTCN)
	    && (pcn->pcn_nameiop == NAMEI_CREATE ||
	        pcn->pcn_nameiop == NAMEI_RENAME)) {
		rv = FUNC4(VDIR, pn_dir->pn_va.va_mode,
		    pn_dir->pn_va.va_uid, pn_dir->pn_va.va_gid,
		    PUFFS_VWRITE, pcn->pcn_cred);
		if (rv)
			return rv;
	}

	return ENOENT;
}