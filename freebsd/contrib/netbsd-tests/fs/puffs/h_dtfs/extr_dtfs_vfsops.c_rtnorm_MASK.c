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
struct vattr {int va_nlink; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_node {struct vattr pn_va; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int VDIR ; 
 int /*<<< orphan*/  FUNC0 (struct vattr*,int,int) ; 
 struct puffs_node* FUNC1 (struct puffs_usermount*) ; 
 int /*<<< orphan*/  FUNC2 (struct puffs_usermount*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct puffs_usermount *pu, const char *str, enum vtype vt)
{
	struct puffs_node *pn = FUNC1(pu);
	struct vattr *va = &pn->pn_va;

	FUNC0(va, vt, 2);
	if (vt == VDIR)
		va->va_nlink = 2;
	else
		va->va_nlink = 1;

	FUNC2(pu, vt, 0, 0);

	return 0;
}