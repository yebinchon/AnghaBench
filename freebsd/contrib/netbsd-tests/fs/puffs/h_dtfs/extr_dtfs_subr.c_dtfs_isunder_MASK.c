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
struct puffs_node {int dummy; } ;
struct dtfs_file {struct puffs_node* df_dotdot; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (struct puffs_node*) ; 

bool
FUNC1(struct puffs_node *pn, struct puffs_node *pn_parent)
{
	struct dtfs_file *df;

	while (pn) {
		if (pn == pn_parent)
			return true;
		df = FUNC0(pn);
		pn = df->df_dotdot;
	}

	return false;
}