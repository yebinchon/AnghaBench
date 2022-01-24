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
struct TYPE_4__ {int s1; int s2; } ;
struct TYPE_3__ {int low; int high; } ;
struct rpc_err {int re_status; TYPE_2__ re_lb; TYPE_1__ re_vers; scalar_t__ re_why; int /*<<< orphan*/  re_errno; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_err*) ; 
 int CLNT_PERROR_BUFLEN ; 
#define  RPC_AUTHERROR 145 
#define  RPC_CANTDECODEARGS 144 
#define  RPC_CANTDECODERES 143 
#define  RPC_CANTENCODEARGS 142 
#define  RPC_CANTRECV 141 
#define  RPC_CANTSEND 140 
#define  RPC_FAILED 139 
#define  RPC_PMAPFAILURE 138 
#define  RPC_PROCUNAVAIL 137 
#define  RPC_PROGNOTREGISTERED 136 
#define  RPC_PROGUNAVAIL 135 
#define  RPC_PROGVERSMISMATCH 134 
#define  RPC_SUCCESS 133 
#define  RPC_SYSTEMERROR 132 
#define  RPC_TIMEDOUT 131 
#define  RPC_UNKNOWNHOST 130 
#define  RPC_UNKNOWNPROTO 129 
#define  RPC_VERSMISMATCH 128 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t FUNC5 (char*,size_t,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,size_t) ; 

char *
FUNC9(CLIENT *rpch, const char *s)
{
	struct rpc_err e;
	char *err;
	char *str;
	char *strstart;
	size_t len, i;

	FUNC2(rpch != NULL);
	FUNC2(s != NULL);

	str = FUNC1(); /* side effect: sets CLNT_PERROR_BUFLEN */
	if (str == NULL)
		return (0);
	len = CLNT_PERROR_BUFLEN;
	strstart = str;
	FUNC0(rpch, &e);

	if ((i = FUNC5(str, len, "%s: ", s)) > 0) {
		str += i;
		len -= i;
	}

	(void)FUNC8(str, FUNC4(e.re_status), len - 1);
	i = FUNC7(str);
	str += i;
	len -= i;

	switch (e.re_status) {
	case RPC_SUCCESS:
	case RPC_CANTENCODEARGS:
	case RPC_CANTDECODERES:
	case RPC_TIMEDOUT:
	case RPC_PROGUNAVAIL:
	case RPC_PROCUNAVAIL:
	case RPC_CANTDECODEARGS:
	case RPC_SYSTEMERROR:
	case RPC_UNKNOWNHOST:
	case RPC_UNKNOWNPROTO:
	case RPC_PMAPFAILURE:
	case RPC_PROGNOTREGISTERED:
	case RPC_FAILED:
		break;

	case RPC_CANTSEND:
	case RPC_CANTRECV:
		i = FUNC5(str, len, "; errno = %s", FUNC6(e.re_errno)); 
		if (i > 0) {
			str += i;
			len -= i;
		}
		break;

	case RPC_VERSMISMATCH:
		i = FUNC5(str, len, "; low version = %u, high version = %u", 
			e.re_vers.low, e.re_vers.high);
		if (i > 0) {
			str += i;
			len -= i;
		}
		break;

	case RPC_AUTHERROR:
		err = FUNC3(e.re_why);
		i = FUNC5(str, len, "; why = ");
		if (i > 0) {
			str += i;
			len -= i;
		}
		if (err != NULL) {
			i = FUNC5(str, len, "%s",err);
		} else {
			i = FUNC5(str, len,
				"(unknown authentication error - %d)",
				(int) e.re_why);
		}
		if (i > 0) {
			str += i;
			len -= i;
		}
		break;

	case RPC_PROGVERSMISMATCH:
		i = FUNC5(str, len, "; low version = %u, high version = %u", 
			e.re_vers.low, e.re_vers.high);
		if (i > 0) {
			str += i;
			len -= i;
		}
		break;

	default:	/* unknown */
		i = FUNC5(str, len, "; s1 = %u, s2 = %u", 
			e.re_lb.s1, e.re_lb.s2);
		if (i > 0) {
			str += i;
			len -= i;
		}
		break;
	}
	strstart[CLNT_PERROR_BUFLEN-1] = '\0';
	return(strstart) ;
}