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
typedef  int /*<<< orphan*/  xi ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  ipfw_xtable_info ;
typedef  int /*<<< orphan*/  ipfw_obj_tentry ;
struct TYPE_5__ {char* name; } ;
struct TYPE_6__ {TYPE_1__ ntlv; } ;
typedef  TYPE_2__ ipfw_obj_header ;

/* Variables and functions */
#define  ENOENT 130 
#define  ENOTSUP 129 
#define  ESRCH 128 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ipfw_obj_header *oh, int ac, char *av[])
{
	ipfw_obj_tentry xtent;
	ipfw_xtable_info xi;
	char key[64];
	int error;

	if (ac == 0)
		FUNC1(EX_USAGE, "address required");

	FUNC3(key, *av, sizeof(key));

	FUNC2(&xi, 0, sizeof(xi));
	error = FUNC4(oh, key, &xi, &xtent);

	switch (error) {
	case 0:
		break;
	case ESRCH:
		FUNC1(EX_UNAVAILABLE, "Table %s not found", oh->ntlv.name);
	case ENOENT:
		FUNC1(EX_UNAVAILABLE, "Entry %s not found", *av);
	case ENOTSUP:
		FUNC1(EX_UNAVAILABLE, "Table %s algo does not support "
		    "\"lookup\" method", oh->ntlv.name);
	default:
		FUNC0(EX_OSERR, "getsockopt(IP_FW_TABLE_XFIND)");
	}

	FUNC5(&xi, &xtent);
}