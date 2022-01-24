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
struct interface {char* int_name; int int_if_flags; int int_metric; int int_adj_inmetric; int int_adj_outmetric; int int_state; int int_d_metric; int /*<<< orphan*/  int_mask; int /*<<< orphan*/  int_net; int /*<<< orphan*/  int_dstaddr; int /*<<< orphan*/  int_addr; } ;

/* Variables and functions */
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRACEACTIONS ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ftrace ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  if_bits ; 
 int /*<<< orphan*/  is_bits ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC8(const char *act,
	 struct interface *ifp)
{
	if (!TRACEACTIONS || ftrace == NULL)
		return;

	FUNC5();
	(void)FUNC2(ftrace, "%-3s interface %-4s ", act, ifp->int_name);
	(void)FUNC2(ftrace, "%-15s-->%-15s ",
		      FUNC6(ifp->int_addr),
		      FUNC1(((ifp->int_if_flags & IFF_POINTOPOINT)
				? ifp->int_dstaddr
				: FUNC4(ifp->int_net)),
			       ifp->int_mask, 1));
	if (ifp->int_metric != 0)
		(void)FUNC2(ftrace, "metric=%d ", ifp->int_metric);
	if (ifp->int_adj_inmetric != 0)
		(void)FUNC2(ftrace, "adj_inmetric=%u ",
			      ifp->int_adj_inmetric);
	if (ifp->int_adj_outmetric != 0)
		(void)FUNC2(ftrace, "adj_outmetric=%u ",
			      ifp->int_adj_outmetric);
	if (!FUNC0(ifp->int_state)
	    && ifp->int_d_metric != 0)
		(void)FUNC2(ftrace, "fake_default=%u ", ifp->int_d_metric);
	FUNC7(if_bits, ifp->int_if_flags, 0);
	FUNC7(is_bits, ifp->int_state, 0);
	(void)FUNC3('\n',ftrace);
}