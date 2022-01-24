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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int count; int objsize; int size; int /*<<< orphan*/  opheader; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;
struct TYPE_4__ {int plen6; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  prefix6; int /*<<< orphan*/  ntlv6; int /*<<< orphan*/  ntlv4; int /*<<< orphan*/  set; } ;
typedef  TYPE_2__ ipfw_nat64stl_cfg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IP_FW_NAT64STL_CREATE ; 
 int NAT64STL_HAS_PREFIX6 ; 
 int NAT64STL_HAS_TABLE4 ; 
 int NAT64STL_HAS_TABLE6 ; 
 int /*<<< orphan*/  NAT64_ALLOW_PRIVATE ; 
 int /*<<< orphan*/  NAT64_LOG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_LOG 134 
#define  TOK_LOGOFF 133 
#define  TOK_PREFIX6 132 
#define  TOK_PRIVATE 131 
#define  TOK_PRIVATEOFF 130 
#define  TOK_TABLE4 129 
#define  TOK_TABLE6 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nat64newcmds ; 
 char* FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(const char *name, uint8_t set, int ac, char *av[])
{
	char buf[sizeof(ipfw_obj_lheader) + sizeof(ipfw_nat64stl_cfg)];
	ipfw_nat64stl_cfg *cfg;
	ipfw_obj_lheader *olh;
	int tcmd, flags;
	char *p;

	FUNC7(buf, 0, sizeof(buf));
	olh = (ipfw_obj_lheader *)buf;
	cfg = (ipfw_nat64stl_cfg *)(olh + 1);

	/* Some reasonable defaults */
	FUNC5(AF_INET6, "64:ff9b::", &cfg->prefix6);
	cfg->plen6 = 96;
	cfg->set = set;
	flags = NAT64STL_HAS_PREFIX6;
	while (ac > 0) {
		tcmd = FUNC4(nat64newcmds, *av, "option");
		ac--; av++;

		switch (tcmd) {
		case TOK_TABLE4:
			FUNC0("table name required");
			FUNC11(&cfg->ntlv4, *av, set, 4);
			flags |= NAT64STL_HAS_TABLE4;
			ac--; av++;
			break;
		case TOK_TABLE6:
			FUNC0("table name required");
			FUNC11(&cfg->ntlv6, *av, set, 6);
			flags |= NAT64STL_HAS_TABLE6;
			ac--; av++;
			break;
		case TOK_PREFIX6:
			FUNC0("IPv6 prefix6 required");
			if ((p = FUNC8(*av, '/')) != NULL)
				*p++ = '\0';
			if (FUNC5(AF_INET6, *av, &cfg->prefix6) != 1)
				FUNC3(EX_USAGE,
				    "Bad prefix: %s", *av);
			cfg->plen6 = FUNC10(p, NULL, 10);
			if (FUNC6(&cfg->prefix6,
			    cfg->plen6) != 0)
				FUNC3(EX_USAGE,
				    "Bad prefix length: %s", p);
			flags |= NAT64STL_HAS_PREFIX6;
			ac--; av++;
			break;
		case TOK_LOG:
			cfg->flags |= NAT64_LOG;
			break;
		case TOK_LOGOFF:
			cfg->flags &= ~NAT64_LOG;
			break;
		case TOK_PRIVATE:
			cfg->flags |= NAT64_ALLOW_PRIVATE;
			break;
		case TOK_PRIVATEOFF:
			cfg->flags &= ~NAT64_ALLOW_PRIVATE;
			break;
		}
	}

	/* Check validness */
	if ((flags & NAT64STL_HAS_TABLE4) != NAT64STL_HAS_TABLE4)
		FUNC3(EX_USAGE, "table4 required");
	if ((flags & NAT64STL_HAS_TABLE6) != NAT64STL_HAS_TABLE6)
		FUNC3(EX_USAGE, "table6 required");
	if ((flags & NAT64STL_HAS_PREFIX6) != NAT64STL_HAS_PREFIX6)
		FUNC3(EX_USAGE, "prefix6 required");

	olh->count = 1;
	olh->objsize = sizeof(*cfg);
	olh->size = sizeof(buf);
	FUNC9(cfg->name, name, sizeof(cfg->name));
	if (FUNC1(IP_FW_NAT64STL_CREATE, &olh->opheader, sizeof(buf)) != 0)
		FUNC2(EX_OSERR, "nat64stl instance creation failed");
}