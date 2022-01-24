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
struct puffs_usermount {int dummy; } ;
struct puffs_node {int dummy; } ;
struct puffs_cn {int /*<<< orphan*/  pcn_namelen; int /*<<< orphan*/  pcn_name; } ;
struct dtfs_file {int /*<<< orphan*/  df_dirents; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (void*) ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PUFFS_SETBACK_NOREF_N2 ; 
 int /*<<< orphan*/  FUNC2 (void*,struct puffs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct puffs_usermount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct puffs_usermount *pu, void *opc, void *targ,
	const struct puffs_cn *pcn)
{
	struct puffs_node *pn_parent = opc;
	struct dtfs_file *df = FUNC0(targ);

	if (!FUNC1(&df->df_dirents))
		return ENOTEMPTY;

	FUNC2(targ, pn_parent, pcn->pcn_name, pcn->pcn_namelen);
	FUNC4(FUNC3(pu), PUFFS_SETBACK_NOREF_N2);

	return 0;
}