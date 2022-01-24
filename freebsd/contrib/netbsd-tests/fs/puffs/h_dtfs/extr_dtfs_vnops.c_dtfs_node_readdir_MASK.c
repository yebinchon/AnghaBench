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
struct TYPE_2__ {scalar_t__ va_type; int /*<<< orphan*/  va_fileid; } ;
struct puffs_node {TYPE_1__ pn_va; int /*<<< orphan*/  pn_data; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_dirent {int /*<<< orphan*/  dfd_name; struct puffs_node* dfd_node; } ;
struct dirent {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DENT_DOT ; 
 int /*<<< orphan*/  DENT_DOTDOT ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 struct dtfs_dirent* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct puffs_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dirent**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct dirent**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int
FUNC7(struct puffs_usermount *pu, void *opc,
	struct dirent *dent, off_t *readoff, size_t *reslen,
	const struct puffs_cred *pcr,
	int *eofflag, off_t *cookies, size_t *ncookies)
{
	struct puffs_node *pn = opc;
	struct puffs_node *pn_nth;
	struct dtfs_dirent *dfd_nth;

	if (pn->pn_va.va_type != VDIR)
		return ENOTDIR;
	
	FUNC3(pn, 1, 0, 0);

	*ncookies = 0;
 again:
	if (*readoff == DENT_DOT || *readoff == DENT_DOTDOT) {
		FUNC4(&dent, pn->pn_va.va_fileid, *readoff, reslen);
		(*readoff)++;
		FUNC1(cookies, ncookies, *readoff);
		goto again;
	}

	for (;;) {
		dfd_nth = FUNC2(pn->pn_data, FUNC0(*readoff));
		if (!dfd_nth) {
			*eofflag = 1;
			break;
		}
		pn_nth = dfd_nth->dfd_node;

		if (!FUNC5(&dent, dfd_nth->dfd_name,
		    pn_nth->pn_va.va_fileid,
		    FUNC6(pn_nth->pn_va.va_type),
		    reslen))
			break;

		(*readoff)++;
		FUNC1(cookies, ncookies, *readoff);
	}

	return 0;
}