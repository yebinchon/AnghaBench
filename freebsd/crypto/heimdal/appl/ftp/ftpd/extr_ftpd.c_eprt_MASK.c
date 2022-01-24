#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int IPPORT_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* data_dest ; 
 TYPE_1__* his_addr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ paranoid ; 
 int pdata ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ usedefault ; 

void
FUNC10(char *str)
{
	char *end;
	char sep;
	int af;
	int ret;
	int port;

	usedefault = 0;
	if (pdata >= 0) {
	    FUNC0(pdata);
	    pdata = -1;
	}

	sep = *str++;
	if (sep == '\0') {
		FUNC4(500, "Bad syntax in EPRT");
		return;
	}
	af = FUNC9 (str, &end, 0);
	if (af == 0 || *end != sep) {
		FUNC4(500, "Bad syntax in EPRT");
		return;
	}
	str = end + 1;
	switch (af) {
#ifdef HAVE_IPV6
	case 2 :
	    data_dest->sa_family = AF_INET6;
	    break;
#endif
	case 1 :
	    data_dest->sa_family = AF_INET;
		break;
	default :
		FUNC4(522, "Network protocol %d not supported, use (1"
#ifdef HAVE_IPV6
		      ",2"
#endif
		      ")", af);
		return;
	}
	end = FUNC8 (str, sep);
	if (end == NULL) {
		FUNC4(500, "Bad syntax in EPRT");
		return;
	}
	*end = '\0';
	ret = FUNC2 (data_dest->sa_family, str,
			 FUNC5 (data_dest));

	if (ret != 1) {
		FUNC4(500, "Bad address syntax in EPRT");
		return;
	}
	str = end + 1;
	port = FUNC9 (str, &end, 0);
	if (port == 0 || *end != sep) {
		FUNC4(500, "Bad port syntax in EPRT");
		return;
	}
	if (port < IPPORT_RESERVED) {
		FUNC4(500, "Bad port in invalid range in EPRT");
		return;
	}
	FUNC6 (data_dest, FUNC1(port));

	if (paranoid &&
	    (data_dest->sa_family != his_addr->sa_family ||
	     FUNC3(FUNC5(data_dest), FUNC5(his_addr), FUNC7(data_dest)) != 0))
	{
		FUNC4(500, "Bad address in EPRT");
	}
	FUNC4(200, "EPRT command successful.");
}