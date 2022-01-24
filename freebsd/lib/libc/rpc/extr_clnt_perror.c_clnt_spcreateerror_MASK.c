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
struct TYPE_3__ {int re_status; int /*<<< orphan*/  re_errno; } ;
struct TYPE_4__ {int cf_stat; TYPE_1__ cf_error; } ;

/* Variables and functions */
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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 TYPE_2__ rpc_createerr ; 
 size_t FUNC3 (char*,size_t,char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

char *
FUNC6(const char *s)
{
	char *str;
	size_t len, i;

	FUNC1(s != NULL);

	str = FUNC0(); /* side effect: sets CLNT_PERROR_BUFLEN */
	if (str == NULL)
		return(0);
	len = CLNT_PERROR_BUFLEN;
	i = FUNC3(str, len, "%s: ", s);
	if (i > 0)
		len -= i;
	(void)FUNC5(str, FUNC2(rpc_createerr.cf_stat), len - 1);
	switch (rpc_createerr.cf_stat) {
	case RPC_PMAPFAILURE:
		(void) FUNC5(str, " - ", len - 1);
		(void) FUNC5(str,
		    FUNC2(rpc_createerr.cf_error.re_status), len - 4);
		break;

	case RPC_SYSTEMERROR:
		(void)FUNC5(str, " - ", len - 1);
		(void)FUNC5(str, FUNC4(rpc_createerr.cf_error.re_errno),
		    len - 4);
		break;

	case RPC_CANTSEND:
	case RPC_CANTDECODERES:
	case RPC_CANTENCODEARGS:
	case RPC_SUCCESS:
	case RPC_UNKNOWNPROTO:
	case RPC_PROGNOTREGISTERED:
	case RPC_FAILED:
	case RPC_UNKNOWNHOST:
	case RPC_CANTDECODEARGS:
	case RPC_PROCUNAVAIL:
	case RPC_PROGVERSMISMATCH:
	case RPC_PROGUNAVAIL:
	case RPC_AUTHERROR:
	case RPC_VERSMISMATCH:
	case RPC_TIMEDOUT:
	case RPC_CANTRECV:
	default:
		break;
	}
	str[CLNT_PERROR_BUFLEN-1] = '\0';
	return (str);
}