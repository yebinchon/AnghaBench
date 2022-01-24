#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pfctl {int opts; scalar_t__ optimize; TYPE_4__* anchor; } ;
struct pf_ruleset {TYPE_2__* rules; TYPE_4__* anchor; } ;
struct pf_rule {TYPE_3__* anchor; } ;
struct TYPE_8__ {char* name; } ;
struct TYPE_7__ {struct pf_ruleset ruleset; } ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_6__ {TYPE_1__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ MAXPATHLEN ; 
 int PF_OPT_NOACTION ; 
 int PF_OPT_VERBOSE ; 
 int PF_RULESET_FILTER ; 
 struct pf_rule* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC3 (struct pf_rule*) ; 
 int FUNC4 (struct pfctl*,char*,struct pf_rule*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pfctl*,struct pf_ruleset*) ; 
 int FUNC6 (struct pfctl*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,char*,char*) ; 
 int FUNC9 (char*) ; 

int
FUNC10(struct pfctl *pf, char *path, struct pf_ruleset *rs,
    int rs_num, int depth)
{
	struct pf_rule *r;
	int		error, len = FUNC9(path);
	int		brace = 0;

	pf->anchor = rs->anchor;

	if (path[0])
		FUNC8(&path[len], MAXPATHLEN - len, "/%s", pf->anchor->name);
	else
		FUNC8(&path[len], MAXPATHLEN - len, "%s", pf->anchor->name);

	if (depth) {
		if (FUNC1(rs->rules[rs_num].active.ptr) != NULL) {
			brace++;
			if (pf->opts & PF_OPT_VERBOSE)
				FUNC7(" {\n");
			if ((pf->opts & PF_OPT_NOACTION) == 0 &&
			    (error = FUNC6(pf,
			    path, rs->anchor))) {
				FUNC7("pfctl_load_rulesets: "
				    "pfctl_ruleset_trans %d\n", error);
				goto error;
			}
		} else if (pf->opts & PF_OPT_VERBOSE)
			FUNC7("\n");

	}

	if (pf->optimize && rs_num == PF_RULESET_FILTER)
		FUNC5(pf, rs);

	while ((r = FUNC1(rs->rules[rs_num].active.ptr)) != NULL) {
		FUNC2(rs->rules[rs_num].active.ptr, r, entries);
		if ((error = FUNC4(pf, path, r, depth)))
			goto error;
		if (r->anchor) {
			if ((error = FUNC10(pf, path,
			    &r->anchor->ruleset, rs_num, depth + 1)))
				goto error;
		} else if (pf->opts & PF_OPT_VERBOSE)
			FUNC7("\n");
		FUNC3(r);
	}
	if (brace && pf->opts & PF_OPT_VERBOSE) {
		FUNC0(depth - 1, (pf->opts & PF_OPT_VERBOSE));
		FUNC7("}\n");
	}
	path[len] = '\0';
	return (0);

 error:
	path[len] = '\0';
	return (error);

}