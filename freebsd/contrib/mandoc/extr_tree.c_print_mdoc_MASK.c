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
struct roff_node {int type; char* string; size_t tok; int flags; int line; int pos; struct roff_node* next; struct roff_node* child; TYPE_2__* eqn; scalar_t__ span; TYPE_1__* args; int /*<<< orphan*/  end; } ;
struct mdoc_argv {size_t arg; scalar_t__ sz; char** value; } ;
struct TYPE_4__ {int /*<<< orphan*/  first; } ;
struct TYPE_3__ {size_t argc; struct mdoc_argv* argv; } ;

/* Variables and functions */
 int NODE_BROKEN ; 
 int NODE_DELIMC ; 
 int NODE_DELIMO ; 
 int NODE_EOS ; 
 int NODE_LINE ; 
 int NODE_NOFILL ; 
 int NODE_NOPRT ; 
 int NODE_NOSRC ; 
#define  ROFFT_BLOCK 137 
#define  ROFFT_BODY 136 
#define  ROFFT_COMMENT 135 
#define  ROFFT_ELEM 134 
#define  ROFFT_EQN 133 
#define  ROFFT_HEAD 132 
#define  ROFFT_ROOT 131 
#define  ROFFT_TAIL 130 
#define  ROFFT_TBL 129 
#define  ROFFT_TEXT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char** mdoc_argnames ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 char** roff_name ; 

__attribute__((used)) static void
FUNC6(const struct roff_node *n, int indent)
{
	const char	 *p, *t;
	int		  i, j;
	size_t		  argc;
	struct mdoc_argv *argv;

	if (n == NULL)
		return;

	argv = NULL;
	argc = 0;
	t = p = NULL;

	switch (n->type) {
	case ROFFT_ROOT:
		t = "root";
		break;
	case ROFFT_BLOCK:
		t = "block";
		break;
	case ROFFT_HEAD:
		t = "head";
		break;
	case ROFFT_BODY:
		if (n->end)
			t = "body-end";
		else
			t = "body";
		break;
	case ROFFT_TAIL:
		t = "tail";
		break;
	case ROFFT_ELEM:
		t = "elem";
		break;
	case ROFFT_TEXT:
		t = "text";
		break;
	case ROFFT_COMMENT:
		t = "comment";
		break;
	case ROFFT_TBL:
		break;
	case ROFFT_EQN:
		t = "eqn";
		break;
	default:
		FUNC0();
	}

	switch (n->type) {
	case ROFFT_TEXT:
	case ROFFT_COMMENT:
		p = n->string;
		break;
	case ROFFT_BODY:
		p = roff_name[n->tok];
		break;
	case ROFFT_HEAD:
		p = roff_name[n->tok];
		break;
	case ROFFT_TAIL:
		p = roff_name[n->tok];
		break;
	case ROFFT_ELEM:
		p = roff_name[n->tok];
		if (n->args) {
			argv = n->args->argv;
			argc = n->args->argc;
		}
		break;
	case ROFFT_BLOCK:
		p = roff_name[n->tok];
		if (n->args) {
			argv = n->args->argv;
			argc = n->args->argc;
		}
		break;
	case ROFFT_TBL:
		break;
	case ROFFT_EQN:
		p = "EQ";
		break;
	case ROFFT_ROOT:
		p = "root";
		break;
	default:
		FUNC0();
	}

	if (n->span) {
		FUNC1(NULL == p && NULL == t);
		FUNC3(n->span, indent);
	} else {
		for (i = 0; i < indent; i++)
			FUNC5(' ');

		FUNC4("%s (%s)", p, t);

		for (i = 0; i < (int)argc; i++) {
			FUNC4(" -%s", mdoc_argnames[argv[i].arg]);
			if (argv[i].sz > 0)
				FUNC4(" [");
			for (j = 0; j < (int)argv[i].sz; j++)
				FUNC4(" [%s]", argv[i].value[j]);
			if (argv[i].sz > 0)
				FUNC4(" ]");
		}

		FUNC5(' ');
		if (n->flags & NODE_DELIMO)
			FUNC5('(');
		if (n->flags & NODE_LINE)
			FUNC5('*');
		FUNC4("%d:%d", n->line, n->pos + 1);
		if (n->flags & NODE_DELIMC)
			FUNC5(')');
		if (n->flags & NODE_EOS)
			FUNC5('.');
		if (n->flags & NODE_BROKEN)
			FUNC4(" BROKEN");
		if (n->flags & NODE_NOFILL)
			FUNC4(" NOFILL");
		if (n->flags & NODE_NOSRC)
			FUNC4(" NOSRC");
		if (n->flags & NODE_NOPRT)
			FUNC4(" NOPRT");
		FUNC5('\n');
	}

	if (n->eqn)
		FUNC2(n->eqn->first, indent + 4);
	if (n->child)
		FUNC6(n->child, indent +
		    (n->type == ROFFT_BLOCK ? 2 : 4));
	if (n->next)
		FUNC6(n->next, indent);
}