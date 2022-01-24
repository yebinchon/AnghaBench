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
typedef  int /*<<< orphan*/  time_t ;
struct show_state {int flags; } ;
struct ip_fw_rule {int set; int flags; int /*<<< orphan*/  rulenum; } ;
struct ip_fw_bcounter {scalar_t__ timestamp; int /*<<< orphan*/  bcnt; int /*<<< orphan*/  pcnt; } ;
struct format_opts {int set_mask; scalar_t__ pcwidth; scalar_t__ bcwidth; } ;
struct cmdline_opts {scalar_t__ do_time; scalar_t__ comment_only; scalar_t__ do_compact; scalar_t__ show_sets; } ;
struct buf_pr {int dummy; } ;
struct TYPE_4__ {int opcode; } ;
typedef  TYPE_1__ ipfw_insn ;

/* Variables and functions */
 int HAVE_DSTIP ; 
 int HAVE_PROTO ; 
 int HAVE_SRCIP ; 
 int IPFW_RULE_JUSTOPTS ; 
 int IPFW_RULE_NOOPT ; 
#define  O_CHECK_STATE 130 
#define  O_EXTERNAL_ACTION 129 
#define  O_EXTERNAL_INSTANCE 128 
 int /*<<< orphan*/  O_IP_DSTPORT ; 
 int /*<<< orphan*/  O_IP_SRCPORT ; 
 int O_NOP ; 
 int O_PROB ; 
 scalar_t__ TIMESTAMP_NUMERIC ; 
 scalar_t__ TIMESTAMP_STRING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * action_opcodes ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dst_opcodes ; 
 int /*<<< orphan*/  FUNC3 (struct show_state*) ; 
 scalar_t__ FUNC4 (struct show_state*,struct ip_fw_rule*) ; 
 int /*<<< orphan*/ * modifier_opcodes ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buf_pr*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC7 (struct buf_pr*,struct format_opts*,struct show_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buf_pr*,struct format_opts*,struct show_state*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC9 (struct buf_pr*,struct format_opts*,struct show_state*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct buf_pr*,struct format_opts*,struct show_state*) ; 
 int /*<<< orphan*/ * src_opcodes ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(struct cmdline_opts *co, struct format_opts *fo,
    struct buf_pr *bp, struct ip_fw_rule *rule, struct ip_fw_bcounter *cntr)
{
	struct show_state state;
	ipfw_insn *cmd;
	static int twidth = 0;
	int i;

	/* Print # DISABLED or skip the rule */
	if ((fo->set_mask & (1 << rule->set)) == 0) {
		/* disabled mask */
		if (!co->show_sets)
			return;
		else
			FUNC1(bp, "# DISABLED ");
	}
	if (FUNC4(&state, rule) != 0) {
		FUNC14("init_show_state() failed");
		return;
	}
	FUNC1(bp, "%05u ", rule->rulenum);

	/* Print counters if enabled */
	if (fo->pcwidth > 0 || fo->bcwidth > 0) {
		FUNC6(bp, &cntr->pcnt, fo->pcwidth);
		FUNC6(bp, &cntr->bcnt, fo->bcwidth);
	}

	/* Print timestamp */
	if (co->do_time == TIMESTAMP_NUMERIC)
		FUNC1(bp, "%10u ", cntr->timestamp);
	else if (co->do_time == TIMESTAMP_STRING) {
		char timestr[30];
		time_t t = (time_t)0;

		if (twidth == 0) {
			FUNC12(timestr, FUNC2(&t));
			*FUNC11(timestr, '\n') = '\0';
			twidth = FUNC13(timestr);
		}
		if (cntr->timestamp > 0) {
			t = FUNC0(cntr->timestamp);

			FUNC12(timestr, FUNC2(&t));
			*FUNC11(timestr, '\n') = '\0';
			FUNC1(bp, "%s ", timestr);
		} else {
			FUNC1(bp, "%*s", twidth, " ");
		}
	}

	/* Print set number */
	if (co->show_sets)
		FUNC1(bp, "set %d ", rule->set);

	/* Print the optional "match probability" */
	cmd = FUNC9(bp, fo, &state, O_PROB);
	/* Print rule action */
	for (i = 0; i < FUNC5(action_opcodes); i++) {
		cmd = FUNC7(bp, fo, &state, action_opcodes[i]);
		if (cmd == NULL)
			continue;
		/* Handle special cases */
		switch (cmd->opcode) {
		case O_CHECK_STATE:
			goto end;
		case O_EXTERNAL_ACTION:
		case O_EXTERNAL_INSTANCE:
			/* External action can have several instructions */
			continue;
		}
		break;
	}
	/* Print rule modifiers */
	for (i = 0; i < FUNC5(modifier_opcodes); i++)
		FUNC7(bp, fo, &state, modifier_opcodes[i]);
	/*
	 * Print rule body
	 */
	if (co->comment_only != 0)
		goto end;

	if (rule->flags & IPFW_RULE_JUSTOPTS) {
		state.flags |= HAVE_PROTO | HAVE_SRCIP | HAVE_DSTIP;
		goto justopts;
	}

	FUNC10(bp, fo, &state);
	if (co->do_compact != 0 && (rule->flags & IPFW_RULE_NOOPT))
		goto justopts;

	/* Print source */
	FUNC1(bp, " from");
	FUNC8(bp, fo, &state, src_opcodes, FUNC5(src_opcodes),
	    O_IP_SRCPORT, HAVE_SRCIP);

	/* Print destination */
	FUNC1(bp, " to");
	FUNC8(bp, fo, &state, dst_opcodes, FUNC5(dst_opcodes),
	    O_IP_DSTPORT, HAVE_DSTIP);

justopts:
	/* Print the rest of options */
	while (FUNC9(bp, fo, &state, -1))
		;
end:
	/* Print comment at the end */
	cmd = FUNC9(bp, fo, &state, O_NOP);
	if (co->comment_only != 0 && cmd == NULL)
		FUNC1(bp, " // ...");
	FUNC1(bp, "\n");
	FUNC3(&state);
}