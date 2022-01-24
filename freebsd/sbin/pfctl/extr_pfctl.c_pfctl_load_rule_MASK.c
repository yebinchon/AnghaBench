#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int8_t ;
struct pfioc_rule {int /*<<< orphan*/  anchor_call; int /*<<< orphan*/  rule; int /*<<< orphan*/  pool_ticket; int /*<<< orphan*/  anchor; int /*<<< orphan*/  ticket; } ;
struct TYPE_3__ {int /*<<< orphan*/  ticket; } ;
struct pfctl {int opts; int /*<<< orphan*/  dev; TYPE_1__ paddr; int /*<<< orphan*/  trans; } ;
struct pf_rule {int /*<<< orphan*/  rpool; TYPE_2__* anchor; int /*<<< orphan*/  af; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  pr ;
struct TYPE_4__ {char* name; char* path; scalar_t__ match; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCADDRULE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ MAXPATHLEN ; 
 int PF_OPT_NOACTION ; 
 int PF_OPT_NUMERIC ; 
 int PF_OPT_VERBOSE ; 
 int PF_OPT_VERBOSE2 ; 
 int /*<<< orphan*/  FUNC1 (struct pfioc_rule*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_rule*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pf_rule*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pfctl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pf_rule*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,char*,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC13 (char*) ; 

int
FUNC14(struct pfctl *pf, char *path, struct pf_rule *r, int depth)
{
	u_int8_t		rs_num = FUNC6(r->action);
	char			*name;
	struct pfioc_rule	pr;
	int			len = FUNC13(path);

	FUNC1(&pr, sizeof(pr));
	/* set up anchor before adding to path for anchor_call */
	if ((pf->opts & PF_OPT_NOACTION) == 0)
		pr.ticket = FUNC9(pf->trans, rs_num, path);
	if (FUNC12(pr.anchor, path, sizeof(pr.anchor)) >= sizeof(pr.anchor))
		FUNC3(1, "pfctl_load_rule: strlcpy");

	if (r->anchor) {
		if (r->anchor->match) {
			if (path[0])
				FUNC11(&path[len], MAXPATHLEN - len,
				    "/%s", r->anchor->name);
			else
				FUNC11(&path[len], MAXPATHLEN - len,
				    "%s", r->anchor->name);
			name = r->anchor->name;
		} else
			name = r->anchor->path;
	} else
		name = "";

	if ((pf->opts & PF_OPT_NOACTION) == 0) {
		if (FUNC7(pf, &r->rpool, r->af))
			return (1);
		pr.pool_ticket = pf->paddr.ticket;
		FUNC5(&pr.rule, r, sizeof(pr.rule));
		if (r->anchor && FUNC12(pr.anchor_call, name,
		    sizeof(pr.anchor_call)) >= sizeof(pr.anchor_call))
			FUNC3(1, "pfctl_load_rule: strlcpy");
		if (FUNC4(pf->dev, DIOCADDRULE, &pr))
			FUNC2(1, "DIOCADDRULE");
	}

	if (pf->opts & PF_OPT_VERBOSE) {
		FUNC0(depth, !(pf->opts & PF_OPT_VERBOSE2));
		FUNC10(r, r->anchor ? r->anchor->name : "",
		    pf->opts & PF_OPT_VERBOSE2,
		    pf->opts & PF_OPT_NUMERIC);
	}
	path[len] = '\0';
	FUNC8(&r->rpool);
	return (0);
}