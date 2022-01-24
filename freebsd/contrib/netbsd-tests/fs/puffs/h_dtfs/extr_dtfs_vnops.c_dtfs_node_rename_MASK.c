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
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cn {int pcn_namelen; char* pcn_name; } ;
struct dtfs_file {int /*<<< orphan*/  df_dirents; } ;
struct dtfs_dirent {int /*<<< orphan*/  dfd_name; int /*<<< orphan*/  dfd_namelen; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (struct puffs_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct puffs_node*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct puffs_cn const*) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC4 (struct puffs_node*,struct dtfs_dirent*) ; 
 struct dtfs_dirent* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (struct puffs_node*,struct puffs_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct puffs_node*,struct puffs_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct puffs_node*,struct dtfs_dirent*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(struct puffs_usermount *pu, void *opc, void *src,
	const struct puffs_cn *pcn_src, void *targ_dir, void *targ,
	const struct puffs_cn *pcn_targ)
{
	struct dtfs_dirent *dfd_src;
	struct dtfs_file *df_targ;
	struct puffs_node *pn_sdir = opc;
	struct puffs_node *pn_sfile = src;
	struct puffs_node *pn_tdir = targ_dir;
	struct puffs_node *pn_tfile = targ;

	/* check that we don't do the old amigados trick */
	if (pn_sfile->pn_va.va_type == VDIR) {
		if (FUNC6(pn_tdir, pn_sfile))
			return EINVAL;

		if ((pcn_src->pcn_namelen == 1 && pcn_src->pcn_name[0]=='.') ||
		    opc == src ||
		    FUNC3(pcn_src) ||
		    FUNC3(pcn_targ)) {
			return EINVAL;
		}
	}

	dfd_src = FUNC5(FUNC1(pn_sdir),
	    pcn_src->pcn_name, pcn_src->pcn_namelen);

	/* does it still exist, or did someone race us here? */
	if (dfd_src == NULL) {
		return ENOENT;
	}

	/* if there's a target file, nuke it for atomic replacement */
	if (pn_tfile) {
		if (pn_tfile->pn_va.va_type == VDIR) {
			df_targ = FUNC0(pn_tfile);
			if (!FUNC2(&df_targ->df_dirents))
				return ENOTEMPTY;
		}
		FUNC7(pn_tfile, pn_tdir,
		    pcn_targ->pcn_name, pcn_targ->pcn_namelen);
	}

	/* out with the old */
	FUNC8(pn_sdir, dfd_src);
	/* and in with the new */
	FUNC4(pn_tdir, dfd_src);

	/* update name */
	FUNC11(dfd_src->dfd_name);
	dfd_src->dfd_name = FUNC10(pcn_targ->pcn_name,pcn_targ->pcn_namelen);
	dfd_src->dfd_namelen = FUNC12(dfd_src->dfd_name);

	FUNC9(src, 0, 1, 0);

	return 0;
}