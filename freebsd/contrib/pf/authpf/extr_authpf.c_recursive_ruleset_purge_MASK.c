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
struct pfioc_trans_e {int size; int esize; int rs_num; char* anchor; char* path; int nr; char* name; struct pfioc_trans_e* array; } ;
struct pfioc_trans {int size; int esize; int rs_num; char* anchor; char* path; int nr; char* name; struct pfioc_trans* array; } ;
struct pfioc_ruleset {int size; int esize; int rs_num; char* anchor; char* path; int nr; char* name; struct pfioc_ruleset* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETRULESET ; 
 int /*<<< orphan*/  DIOCGETRULESETS ; 
 int /*<<< orphan*/  DIOCXBEGIN ; 
 int /*<<< orphan*/  DIOCXCOMMIT ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int PF_RULESET_MAX ; 
 int PF_RULESET_TABLE ; 
 struct pfioc_trans_e* FUNC0 (int,int) ; 
 int /*<<< orphan*/  dev ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct pfioc_trans_e*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_trans_e*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(char *an, char *rs)
{
	struct pfioc_trans_e     *t_e = NULL;
	struct pfioc_trans	 *t = NULL;
	struct pfioc_ruleset	 *prs = NULL;
	int			  i;


	/* purge rules */
	errno = 0;
	if ((t = FUNC0(1, sizeof(struct pfioc_trans))) == NULL)
		goto no_mem;
	if ((t_e = FUNC0(PF_RULESET_MAX+1,
	    sizeof(struct pfioc_trans_e))) == NULL)
		goto no_mem;
	t->size = PF_RULESET_MAX+1;
	t->esize = sizeof(struct pfioc_trans_e);
	t->array = t_e;
	for (i = 0; i < PF_RULESET_MAX+1; ++i) {
		t_e[i].rs_num = i;
		FUNC3(t_e[i].anchor, sizeof(t_e[i].anchor), "%s/%s", an, rs);
	}
	t_e[PF_RULESET_MAX].rs_num = PF_RULESET_TABLE;
	if ((FUNC2(dev, DIOCXBEGIN, t) ||
	    FUNC2(dev, DIOCXCOMMIT, t)) &&
	    errno != EINVAL)
		goto cleanup;

	/* purge any children */
	if ((prs = FUNC0(1, sizeof(struct pfioc_ruleset))) == NULL)
		goto no_mem;
	FUNC3(prs->path, sizeof(prs->path), "%s/%s", an, rs);
	if (FUNC2(dev, DIOCGETRULESETS, prs)) {
		if (errno != EINVAL)
			goto cleanup;
		errno = 0;
	} else {
		int nr = prs->nr;

		while (nr) {
			prs->nr = 0;
			if (FUNC2(dev, DIOCGETRULESET, prs))
				goto cleanup;

			if (FUNC5(prs->path, prs->name))
				goto cleanup;
			nr--;
		}
	}

no_mem:
	if (errno == ENOMEM)
		FUNC4(LOG_ERR, "calloc failed");

cleanup:
	FUNC1(t);
	FUNC1(t_e);
	FUNC1(prs);
	return (errno);
}