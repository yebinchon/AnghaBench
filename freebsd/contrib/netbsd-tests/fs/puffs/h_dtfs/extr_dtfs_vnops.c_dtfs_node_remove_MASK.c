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
struct TYPE_2__ {scalar_t__ va_type; scalar_t__ va_nlink; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cn {int /*<<< orphan*/  pcn_namelen; int /*<<< orphan*/  pcn_name; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PUFFS_SETBACK_NOREF_N2 ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC0 (void*,struct puffs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct puffs_usermount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct puffs_usermount *pu, void *opc, void *targ,
	const struct puffs_cn *pcn)
{
	struct puffs_node *pn_parent = opc;
	struct puffs_node *pn = targ;

	if (pn->pn_va.va_type == VDIR)
		return EPERM;

	FUNC0(targ, pn_parent, pcn->pcn_name, pcn->pcn_namelen);

	if (pn->pn_va.va_nlink == 0)
		FUNC2(FUNC1(pu), PUFFS_SETBACK_NOREF_N2);

	return 0;
}