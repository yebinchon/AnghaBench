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
struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_mount {int dtm_nfiles; } ;
struct dtfs_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct puffs_node*) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dtfs_dirent* FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct puffs_node*,struct dtfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct dtfs_dirent*) ; 
 struct dtfs_mount* FUNC5 (struct puffs_node*) ; 

void
FUNC6(struct puffs_node *nukeme, struct puffs_node *pn_parent,
	const char *fname, size_t fnlen)
{
	struct dtfs_dirent *dfd;
	struct dtfs_mount *dtm;

	FUNC1(pn_parent->pn_va.va_type == VDIR);

	dfd = FUNC2(FUNC0(pn_parent), fname, fnlen);
	FUNC1(dfd);

	dtm = FUNC5(nukeme);
	dtm->dtm_nfiles--;
	FUNC1(dtm->dtm_nfiles >= 1);

	FUNC3(pn_parent, dfd);
	FUNC4(dfd);
}