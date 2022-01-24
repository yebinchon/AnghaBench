#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nat44_cfg_redir {int dummy; } ;
struct nat44_cfg_nat {int /*<<< orphan*/  redir_cnt; int /*<<< orphan*/  mode; int /*<<< orphan*/  ip; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; TYPE_1__ head; } ;
struct TYPE_7__ {int /*<<< orphan*/  opheader; TYPE_2__ ntlv; } ;
typedef  TYPE_3__ ipfw_obj_header ;
struct TYPE_8__ {int /*<<< orphan*/  do_quiet; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IP_FW_NAT44_XCONFIG ; 
 int /*<<< orphan*/  PKT_ALIAS_DENY_INCOMING ; 
 int /*<<< orphan*/  PKT_ALIAS_LOG ; 
 int /*<<< orphan*/  PKT_ALIAS_PROXY_ONLY ; 
 int /*<<< orphan*/  PKT_ALIAS_RESET_ON_ADDR_CHANGE ; 
 int /*<<< orphan*/  PKT_ALIAS_REVERSE ; 
 int /*<<< orphan*/  PKT_ALIAS_SAME_PORTS ; 
 int /*<<< orphan*/  PKT_ALIAS_SKIP_GLOBAL ; 
 int /*<<< orphan*/  PKT_ALIAS_UNREGISTERED_ONLY ; 
#define  TOK_ALIAS_REV 140 
#define  TOK_ALOG 139 
#define  TOK_DENY_INC 138 
#define  TOK_IF 137 
#define  TOK_IP 136 
#define  TOK_PROXY_ONLY 135 
#define  TOK_REDIR_ADDR 134 
#define  TOK_REDIR_PORT 133 
#define  TOK_REDIR_PROTO 132 
#define  TOK_RESET_ADDR 131 
#define  TOK_SAME_PORTS 130 
#define  TOK_SKIP_GLOBAL 129 
#define  TOK_UNREG_ONLY 128 
 TYPE_4__ co ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (int*,char***) ; 
 size_t FUNC4 (int*,char***) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char**) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 char* FUNC8 (size_t) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  nat_params ; 
 int /*<<< orphan*/  FUNC11 (char*,struct nat44_cfg_nat*) ; 
 int FUNC12 (char*,int*,char***) ; 
 int FUNC13 (char*,int*,char***) ; 
 int FUNC14 (char*,int*,char***) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC16 (char*,char**,int /*<<< orphan*/ ) ; 

void
FUNC17(int ac, char **av)
{
	ipfw_obj_header *oh;
	struct nat44_cfg_nat *n;		/* Nat instance configuration. */
	int i, off, tok, ac1;
	char *id, *buf, **av1, *end;
	size_t len;

	av++;
	ac--;
	/* Nat id. */
	if (ac == 0)
		FUNC2(EX_DATAERR, "missing nat id");
	id = *av;
	i = (int)FUNC16(id, &end, 0);
	if (i <= 0 || *end != '\0')
		FUNC2(EX_DATAERR, "illegal nat id: %s", id);
	av++;
	ac--;
	if (ac == 0)
		FUNC2(EX_DATAERR, "missing option");

	len = sizeof(*oh) + sizeof(*n);
	ac1 = ac;
	av1 = av;
	while (ac1 > 0) {
		tok = FUNC9(nat_params, *av1);
		ac1--;
		av1++;
		switch (tok) {
		case TOK_IP:
		case TOK_IF:
			ac1--;
			av1++;
			break;
		case TOK_ALOG:
		case TOK_DENY_INC:
		case TOK_SAME_PORTS:
		case TOK_SKIP_GLOBAL:
		case TOK_UNREG_ONLY:
		case TOK_RESET_ADDR:
		case TOK_ALIAS_REV:
		case TOK_PROXY_ONLY:
			break;
		case TOK_REDIR_ADDR:
			if (ac1 < 2)
				FUNC2(EX_DATAERR, "redirect_addr: "
				    "not enough arguments");
			len += FUNC3(&ac1, &av1);
			av1 += 2;
			ac1 -= 2;
			break;
		case TOK_REDIR_PORT:
			if (ac1 < 3)
				FUNC2(EX_DATAERR, "redirect_port: "
				    "not enough arguments");
			av1++;
			ac1--;
			len += FUNC4(&ac1, &av1);
			av1 += 2;
			ac1 -= 2;
			/* Skip optional remoteIP/port */
			if (ac1 != 0 && FUNC7(**av1)) {
				av1++;
				ac1--;
			}
			break;
		case TOK_REDIR_PROTO:
			if (ac1 < 2)
				FUNC2(EX_DATAERR, "redirect_proto: "
				    "not enough arguments");
			len += sizeof(struct nat44_cfg_redir);
			av1 += 2;
			ac1 -= 2;
			/* Skip optional remoteIP/port */
			if (ac1 != 0 && FUNC7(**av1)) {
				av1++;
				ac1--;
			}
			if (ac1 != 0 && FUNC7(**av1)) {
				av1++;
				ac1--;
			}
			break;
		default:
			FUNC2(EX_DATAERR, "unrecognised option ``%s''", av1[-1]);
		}
	}

	if ((buf = FUNC8(len)) == NULL)
		FUNC2(EX_OSERR, "malloc failed");

	/* Offset in buf: save space for header at the beginning. */
	off = sizeof(*oh) + sizeof(*n);
	FUNC10(buf, 0, len);
	oh = (ipfw_obj_header *)buf;
	n = (struct nat44_cfg_nat *)(oh + 1);
	oh->ntlv.head.length = sizeof(oh->ntlv);
	FUNC15(oh->ntlv.name, sizeof(oh->ntlv.name), "%d", i);
	FUNC15(n->name, sizeof(n->name), "%d", i);

	while (ac > 0) {
		tok = FUNC9(nat_params, *av);
		ac--;
		av++;
		switch (tok) {
		case TOK_IP:
			if (ac == 0)
				FUNC2(EX_DATAERR, "missing option");
			if (!FUNC5(av[0], &(n->ip)))
				FUNC2(EX_DATAERR, "bad ip address ``%s''",
				    av[0]);
			ac--;
			av++;
			break;
		case TOK_IF:
			if (ac == 0)
				FUNC2(EX_DATAERR, "missing option");
			FUNC11(av[0], n);
			ac--;
			av++;
			break;
		case TOK_ALOG:
			n->mode |= PKT_ALIAS_LOG;
			break;
		case TOK_DENY_INC:
			n->mode |= PKT_ALIAS_DENY_INCOMING;
			break;
		case TOK_SAME_PORTS:
			n->mode |= PKT_ALIAS_SAME_PORTS;
			break;
		case TOK_UNREG_ONLY:
			n->mode |= PKT_ALIAS_UNREGISTERED_ONLY;
			break;
		case TOK_SKIP_GLOBAL:
			n->mode |= PKT_ALIAS_SKIP_GLOBAL;
			break;
		case TOK_RESET_ADDR:
			n->mode |= PKT_ALIAS_RESET_ON_ADDR_CHANGE;
			break;
		case TOK_ALIAS_REV:
			n->mode |= PKT_ALIAS_REVERSE;
			break;
		case TOK_PROXY_ONLY:
			n->mode |= PKT_ALIAS_PROXY_ONLY;
			break;
			/*
			 * All the setup_redir_* functions work directly in
			 * the final buffer, see above for details.
			 */
		case TOK_REDIR_ADDR:
		case TOK_REDIR_PORT:
		case TOK_REDIR_PROTO:
			switch (tok) {
			case TOK_REDIR_ADDR:
				i = FUNC12(&buf[off], &ac, &av);
				break;
			case TOK_REDIR_PORT:
				i = FUNC13(&buf[off], &ac, &av);
				break;
			case TOK_REDIR_PROTO:
				i = FUNC14(&buf[off], &ac, &av);
				break;
			}
			n->redir_cnt++;
			off += i;
			break;
		}
	}

	i = FUNC0(IP_FW_NAT44_XCONFIG, &oh->opheader, len);
	if (i != 0)
		FUNC1(1, "setsockopt(%s)", "IP_FW_NAT44_XCONFIG");

	if (!co.do_quiet) {
		/* After every modification, we show the resultant rule. */
		int _ac = 3;
		const char *_av[] = {"show", "config", id};
		FUNC6(_ac, (char **)(void *)_av);
	}
}