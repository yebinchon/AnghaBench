#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct TYPE_3__ {int action; int /*<<< orphan*/  rpool; } ;
struct pfioc_rule {scalar_t__ nr; TYPE_1__ rule; int /*<<< orphan*/  anchor_call; int /*<<< orphan*/  ticket; int /*<<< orphan*/  anchor; } ;
typedef  int /*<<< orphan*/  pr ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETRULE ; 
 int /*<<< orphan*/  DIOCGETRULES ; 
#define  PF_BINAT 130 
#define  PF_NAT 129 
 int PF_OPT_NUMERIC ; 
 int PF_OPT_SHOWALL ; 
 int PF_OPT_VERBOSE2 ; 
#define  PF_RDR 128 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct pfioc_rule*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pfioc_rule*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(int dev, int opts, char *anchorname)
{
	struct pfioc_rule pr;
	u_int32_t mnr, nr;
	static int nattype[3] = { PF_NAT, PF_RDR, PF_BINAT };
	int i, dotitle = opts & PF_OPT_SHOWALL;

	FUNC2(&pr, 0, sizeof(pr));
	FUNC1(pr.anchor, anchorname, sizeof(pr.anchor));
	for (i = 0; i < 3; i++) {
		pr.rule.action = nattype[i];
		if (FUNC0(dev, DIOCGETRULES, &pr)) {
			FUNC9("DIOCGETRULES");
			return (-1);
		}
		mnr = pr.nr;
		for (nr = 0; nr < mnr; ++nr) {
			pr.nr = nr;
			if (FUNC0(dev, DIOCGETRULE, &pr)) {
				FUNC9("DIOCGETRULE");
				return (-1);
			}
			if (FUNC4(dev, &pr.rule.rpool, nr,
			    pr.ticket, nattype[i], anchorname) != 0)
				return (-1);
			if (dotitle) {
				FUNC6("TRANSLATION RULES:");
				dotitle = 0;
			}
			FUNC7(&pr.rule, pr.anchor_call,
			    opts & PF_OPT_VERBOSE2, opts & PF_OPT_NUMERIC);
			FUNC8("\n");
			FUNC5(&pr.rule, opts);
			FUNC3(&pr.rule.rpool);
		}
	}
	return (0);
}