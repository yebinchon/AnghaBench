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
struct icode {int /*<<< orphan*/  root; } ;
typedef  int /*<<< orphan*/  opt_state_t ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct icode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct icode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct icode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct icode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int pcap_optimizer_debug ; 
 scalar_t__ pcap_print_dot_graph ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(compiler_state_t *cstate, struct icode *ic)
{
	opt_state_t opt_state;

	FUNC3(cstate, &opt_state, ic);
	FUNC4(cstate, &opt_state, ic, 0);
	FUNC4(cstate, &opt_state, ic, 1);
	FUNC0(&opt_state, ic);
#ifdef BDEBUG
	if (pcap_optimizer_debug > 1 || pcap_print_dot_graph) {
		printf("after intern_blocks()\n");
		opt_dump(cstate, ic);
	}
#endif
	FUNC5(&ic->root);
#ifdef BDEBUG
	if (pcap_optimizer_debug > 1 || pcap_print_dot_graph) {
		printf("after opt_root()\n");
		opt_dump(cstate, ic);
	}
#endif
	FUNC1(&opt_state);
}