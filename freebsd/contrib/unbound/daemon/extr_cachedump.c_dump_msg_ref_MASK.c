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
struct TYPE_2__ {scalar_t__ flags; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  type; int /*<<< orphan*/  dname_len; int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC6(RES* ssl, struct ub_packed_rrset_key* k)
{
	char* nm, *tp, *cl;
	nm = FUNC3(k->rk.dname, k->rk.dname_len);
	tp = FUNC4(FUNC1(k->rk.type));
	cl = FUNC2(FUNC1(k->rk.rrset_class));
	if(!nm || !cl || !tp) {
		FUNC0(nm);
		FUNC0(tp);
		FUNC0(cl);
		return FUNC5(ssl, "BADREF\n");
	}
	if(!FUNC5(ssl, "%s %s %s %d\n", nm, cl, tp, (int)k->rk.flags)) {
		FUNC0(nm);
		FUNC0(tp);
		FUNC0(cl);
		return 0;
	}
	FUNC0(nm);
	FUNC0(tp);
	FUNC0(cl);

	return 1;
}