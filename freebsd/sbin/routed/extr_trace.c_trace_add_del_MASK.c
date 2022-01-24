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
struct rt_entry {int /*<<< orphan*/  rt_state; int /*<<< orphan*/  rt_ifp; int /*<<< orphan*/  rt_spares; int /*<<< orphan*/  rt_gate; int /*<<< orphan*/  rt_mask; int /*<<< orphan*/  rt_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ftrace ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_bits ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(const char * action, struct rt_entry *rt)
{
	if (ftrace == NULL)
		return;

	FUNC3();
	(void)FUNC1(ftrace, "%s    %-35s ",
		      action,
		      FUNC5(rt->rt_dst, rt->rt_mask, rt->rt_gate));
	FUNC4(rt->rt_spares, 0,0,0,0,FUNC0(rt->rt_state,rt->rt_ifp));
	FUNC6(rs_bits, rt->rt_state, 0);
	(void)FUNC2('\n',ftrace);
}