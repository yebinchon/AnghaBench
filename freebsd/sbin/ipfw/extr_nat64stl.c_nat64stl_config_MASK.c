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
struct TYPE_3__ {int /*<<< orphan*/  opheader; int /*<<< orphan*/  ntlv; } ;
typedef  TYPE_1__ ipfw_obj_header ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ntlv6; int /*<<< orphan*/  ntlv4; } ;
typedef  TYPE_2__ ipfw_nat64stl_cfg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IP_FW_NAT64STL_CONFIG ; 
 int /*<<< orphan*/  NAT64_ALLOW_PRIVATE ; 
 int /*<<< orphan*/  NAT64_LOG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_LOG 133 
#define  TOK_LOGOFF 132 
#define  TOK_PRIVATE 131 
#define  TOK_PRIVATEOFF 130 
#define  TOK_TABLE4 129 
#define  TOK_TABLE6 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nat64newcmds ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(const char *name, uint8_t set, int ac, char **av)
{
	char buf[sizeof(ipfw_obj_header) + sizeof(ipfw_nat64stl_cfg)];
	ipfw_nat64stl_cfg *cfg;
	ipfw_obj_header *oh;
	char *opt;
	size_t sz;
	int tcmd;

	if (ac == 0)
		FUNC4(EX_USAGE, "config options required");
	FUNC6(&buf, 0, sizeof(buf));
	oh = (ipfw_obj_header *)buf;
	cfg = (ipfw_nat64stl_cfg *)(oh + 1);
	sz = sizeof(buf);

	FUNC7(&oh->ntlv, name, set);
	if (FUNC1(IP_FW_NAT64STL_CONFIG, &oh->opheader, &sz) != 0)
		FUNC3(EX_OSERR, "failed to get config for instance %s", name);

	while (ac > 0) {
		tcmd = FUNC5(nat64newcmds, *av, "option");
		opt = *av;
		ac--; av++;

		switch (tcmd) {
#if 0
		case TOK_TABLE4:
			NEED1("table name required");
			table_fill_ntlv(&cfg->ntlv4, *av, set, 4);
			ac--; av++;
			break;
		case TOK_TABLE6:
			NEED1("table name required");
			table_fill_ntlv(&cfg->ntlv6, *av, set, 6);
			ac--; av++;
			break;
#endif
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
		default:
			FUNC4(EX_USAGE, "Can't change %s option", opt);
		}
	}

	if (FUNC2(IP_FW_NAT64STL_CONFIG, &oh->opheader, sizeof(buf)) != 0)
		FUNC3(EX_OSERR, "nat64stl instance configuration failed");
}