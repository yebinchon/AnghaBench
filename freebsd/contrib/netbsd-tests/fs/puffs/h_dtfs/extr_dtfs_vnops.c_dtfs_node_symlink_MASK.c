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
struct vattr {scalar_t__ va_type; } ;
struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  va_size; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_newinfo {int dummy; } ;
struct puffs_cn {int dummy; } ;
struct dtfs_file {int /*<<< orphan*/  df_linktarget; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (struct puffs_node*) ; 
 int ENODEV ; 
 scalar_t__ VLNK ; 
 struct puffs_node* FUNC1 (struct puffs_node*,struct puffs_cn const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct puffs_newinfo*,struct puffs_node*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct vattr const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct puffs_usermount *pu, void *opc,
	struct puffs_newinfo *pni, const struct puffs_cn *pcn_src,
	const struct vattr *va, const char *link_target)
{
	struct puffs_node *pn_parent = opc;
	struct puffs_node *pn_new;
	struct dtfs_file *df_new;

	if (va->va_type != VLNK)
		return ENODEV;

	pn_new = FUNC1(pn_parent, pcn_src, VLNK);
	FUNC4(&pn_new->pn_va, va);
	df_new = FUNC0(pn_new);
	df_new->df_linktarget = FUNC2(link_target);
	pn_new->pn_va.va_size = FUNC5(df_new->df_linktarget);

	FUNC3(pni, pn_new);

	return 0;
}