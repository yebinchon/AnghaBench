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
struct interface_info {int dummy; } ;
struct client_lease {int is_bootp; int /*<<< orphan*/  options; void* expiry; void* rebind; void* renewal; void* server_name; int /*<<< orphan*/  nextserver; void* filename; int /*<<< orphan*/  medium; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  BOOTP 138 
#define  EXPIRE 137 
#define  FILENAME 136 
#define  FIXED_ADDR 135 
#define  INTERFACE 134 
#define  MEDIUM 133 
#define  NEXT_SERVER 132 
#define  OPTION 131 
#define  REBIND 130 
#define  RENEW 129 
 int SEMI ; 
#define  SERVER_NAME 128 
 int STRING ; 
 struct interface_info* FUNC0 (char*) ; 
 int FUNC1 (char**,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(FILE *cfile, struct client_lease *lease,
    struct interface_info **ipp)
{
	int			 token;
	char			*val;
	struct interface_info	*ip;

	switch (FUNC1(&val, cfile)) {
	case BOOTP:
		lease->is_bootp = 1;
		break;
	case INTERFACE:
		token = FUNC1(&val, cfile);
		if (token != STRING) {
			FUNC7("expecting interface name (in quotes).");
			FUNC8(cfile);
			break;
		}
		ip = FUNC0(val);
		*ipp = ip;
		break;
	case FIXED_ADDR:
		if (!FUNC3(cfile, &lease->address))
			return;
		break;
	case MEDIUM:
		FUNC6(cfile, &lease->medium, 0);
		return;
	case FILENAME:
		lease->filename = FUNC5(cfile);
		return;
	case NEXT_SERVER:
		if (!FUNC3(cfile, &lease->nextserver))
			return;
		break;
	case SERVER_NAME:
		lease->server_name = FUNC5(cfile);
		return;
	case RENEW:
		lease->renewal = FUNC2(cfile);
		return;
	case REBIND:
		lease->rebind = FUNC2(cfile);
		return;
	case EXPIRE:
		lease->expiry = FUNC2(cfile);
		return;
	case OPTION:
		FUNC4(cfile, lease->options);
		return;
	default:
		FUNC7("expecting lease declaration.");
		FUNC8(cfile);
		break;
	}
	token = FUNC1(&val, cfile);
	if (token != SEMI) {
		FUNC7("expecting semicolon.");
		FUNC8(cfile);
	}
}