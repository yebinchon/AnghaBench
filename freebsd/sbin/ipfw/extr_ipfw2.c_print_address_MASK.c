#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct show_state {int flags; TYPE_1__* rule; } ;
struct format_opts {int dummy; } ;
struct buf_pr {int dummy; } ;
struct TYPE_6__ {int opcode; int len; } ;
typedef  TYPE_2__ ipfw_insn ;
struct TYPE_5__ {int act_ofs; TYPE_2__* cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int F_OR ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,char*) ; 
 scalar_t__ FUNC2 (int,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct buf_pr*,struct format_opts*,struct show_state*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(struct buf_pr *bp, struct format_opts *fo,
    struct show_state *state, const int opcodes[], size_t nops, int portop,
    int flag)
{
	ipfw_insn *cmd;
	int count, l, portcnt, pf;

	count = portcnt = 0;
	for (l = state->rule->act_ofs, cmd = state->rule->cmd;
	    l > 0; l -= FUNC0(cmd), cmd += FUNC0(cmd)) {
		if (FUNC2(cmd->opcode, opcodes, nops))
			count++;
		else if (cmd->opcode == portop)
			portcnt++;
	}
	if (count == 0)
		FUNC1(bp, " any");
	for (l = state->rule->act_ofs, cmd = state->rule->cmd;
	    l > 0 && count > 0; l -= FUNC0(cmd), cmd += FUNC0(cmd)) {
		if (!FUNC2(cmd->opcode, opcodes, nops))
			continue;
		FUNC3(bp, fo, state, cmd);
		if ((cmd->len & F_OR) == 0)
			break;
		count--;
	}
	/*
	 * If several O_IP_?PORT opcodes specified, leave them to the
	 * options section.
	 */
	if (portcnt == 1) {
		for (l = state->rule->act_ofs, cmd = state->rule->cmd, pf = 0;
		    l > 0; l -= FUNC0(cmd), cmd += FUNC0(cmd)) {
			if (cmd->opcode != portop) {
				pf = (cmd->len & F_OR);
				continue;
			}
			/* Print opcode iff it is not in OR block. */
			if (pf == 0 && (cmd->len & F_OR) == 0)
				FUNC3(bp, fo, state, cmd);
			break;
		}
	}
	state->flags |= flag;
}