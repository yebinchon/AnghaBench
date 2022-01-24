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
struct puffs_cred {int dummy; } ;
struct dtfs_file {int /*<<< orphan*/  df_linktarget; } ;

/* Variables and functions */
 struct dtfs_file* FUNC0 (void*) ; 
 scalar_t__ VLNK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC3 (char*) ; 

int
FUNC4(struct puffs_usermount *pu, void *opc,
	const struct puffs_cred *cred, char *linkname, size_t *linklen)
{
	struct dtfs_file *df = FUNC0(opc);
	struct puffs_node *pn = opc;

	FUNC1(pn->pn_va.va_type == VLNK);
	FUNC2(linkname, df->df_linktarget, *linklen);
	*linklen = FUNC3(linkname);

	return 0;
}