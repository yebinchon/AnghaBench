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
struct vattr {int va_nlink; int /*<<< orphan*/  va_size; } ;
struct puffs_usermount {int dummy; } ;
struct puffs_node {struct vattr pn_va; } ;
struct dtfs_file {int /*<<< orphan*/  df_linktarget; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (struct puffs_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct vattr*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct puffs_node* FUNC3 (struct puffs_usermount*) ; 
 int /*<<< orphan*/  FUNC4 (struct puffs_usermount*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct puffs_usermount *pu, const char *str, enum vtype vt)
{
	struct puffs_node *pn = FUNC3(pu);
	struct vattr *va = &pn->pn_va;
	struct dtfs_file *df = FUNC0(pn);
	char ltarg[256+1];

	if (FUNC5(str, "%*s %256s", ltarg) != 1)
		return 1;

	FUNC1(va, vt, 2);
	df->df_linktarget = FUNC2(ltarg);

	va->va_nlink = 1;
	va->va_size = FUNC6(df->df_linktarget);

	FUNC4(pu, vt, 0, 0);

	return 0;
}