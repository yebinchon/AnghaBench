#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {char* hits; int /*<<< orphan*/  idx; int /*<<< orphan*/  flagstr; int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ reslist_row ;
typedef  int /*<<< orphan*/  addrmaskstr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int RESLIST_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(
	int *		pfields,
	reslist_row *	prow,
	FILE *		fp
	)
{
	char	addrmaskstr[128];
	int	prefix;	/* subnet mask as prefix bits count */
	u_int	idx;

	(*pfields)++;
	/* we understand 4 tags */
	if (RESLIST_FIELDS > *pfields)
		return;

	prefix = FUNC3(&prow->mask);
	if (prefix >= 0)
		FUNC2(addrmaskstr, sizeof(addrmaskstr), "%s/%d",
			 FUNC4(&prow->addr), prefix);
	else
		FUNC2(addrmaskstr, sizeof(addrmaskstr), "%s %s",
			 FUNC4(&prow->addr), FUNC4(&prow->mask));

	/*
	"   hits    addr/prefix or addr mask\n"
	"           restrictions\n"
	"==============================================================================\n");
	 */
	FUNC1(fp,
		"%10lu %s\n"
		"           %s\n",
		prow->hits, addrmaskstr, prow->flagstr);
	idx = prow->idx;
	FUNC0(*prow);
	prow->idx = idx;
}