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
struct TYPE_2__ {scalar_t__ va_fileid; scalar_t__ va_gen; int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_size; int /*<<< orphan*/  va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_newinfo {int dummy; } ;
struct dtfs_fid {scalar_t__ dfid_fileid; scalar_t__ dfid_gen; int /*<<< orphan*/  dfid_addr; } ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  addrcmp ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct puffs_newinfo*,struct puffs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct puffs_newinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct puffs_newinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct puffs_newinfo*,int /*<<< orphan*/ ) ; 
 struct puffs_node* FUNC5 (struct puffs_usermount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct puffs_usermount *pu, void *fid, size_t fidsize,
	struct puffs_newinfo *pni)
{
	struct dtfs_fid *dfid;
	struct puffs_node *pn;

	FUNC0(fidsize == sizeof(struct dtfs_fid));
	dfid = fid;

	pn = FUNC5(pu, addrcmp, dfid->dfid_addr);
	if (pn == NULL)
		return ESTALE;

	if (pn->pn_va.va_fileid != dfid->dfid_fileid
	    || pn->pn_va.va_gen != dfid->dfid_gen)
		return ESTALE;
	
	FUNC1(pni, pn);
	FUNC4(pni, pn->pn_va.va_type);
	FUNC3(pni, pn->pn_va.va_size);
	FUNC2(pni, pn->pn_va.va_rdev);

	return 0;
}