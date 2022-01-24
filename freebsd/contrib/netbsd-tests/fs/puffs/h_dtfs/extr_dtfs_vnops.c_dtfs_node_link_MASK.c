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
struct dtfs_dirent {int /*<<< orphan*/  dfd_name; int /*<<< orphan*/  dfd_namelen; void* dfd_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct puffs_node*,struct dtfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct dtfs_dirent* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct puffs_usermount *pu, void *opc, void *targ,
	const struct puffs_cn *pcn)
{
	struct puffs_node *pn_dir = opc;
	struct dtfs_dirent *dfd;

	dfd = FUNC2(sizeof(struct dtfs_dirent));
	dfd->dfd_node = targ;
	dfd->dfd_name = FUNC3(pcn->pcn_name, pcn->pcn_namelen);
	dfd->dfd_namelen = FUNC4(dfd->dfd_name);
	FUNC0(pn_dir, dfd);

	FUNC1(targ, 0, 1, 0);

	return 0;
}