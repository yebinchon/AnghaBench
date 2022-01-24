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
struct in6_addr {int dummy; } ;
struct TYPE_3__ {int count; int objsize; int size; int /*<<< orphan*/  opheader; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;
struct TYPE_4__ {int flags; int plen; int /*<<< orphan*/  name; int /*<<< orphan*/  external; int /*<<< orphan*/  internal; int /*<<< orphan*/  if_name; int /*<<< orphan*/  set; } ;
typedef  TYPE_2__ ipfw_nptv6_cfg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IP_FW_NPTV6_CREATE ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int NPTV6_DYNAMIC_PREFIX ; 
 int NPTV6_HAS_EXTPREFIX ; 
 int NPTV6_HAS_INTPREFIX ; 
 int NPTV6_HAS_PREFIXLEN ; 
#define  TOK_EXTIF 131 
#define  TOK_EXTPREFIX 130 
#define  TOK_INTPREFIX 129 
#define  TOK_PREFIXLEN 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  nptv6newcmds ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC13 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC15(const char *name, uint8_t set, int ac, char *av[])
{
	char buf[sizeof(ipfw_obj_lheader) + sizeof(ipfw_nptv6_cfg)];
	struct in6_addr mask;
	ipfw_nptv6_cfg *cfg;
	ipfw_obj_lheader *olh;
	int tcmd, flags, plen;
	char *p = "\0";

	plen = 0;
	FUNC7(buf, 0, sizeof(buf));
	olh = (ipfw_obj_lheader *)buf;
	cfg = (ipfw_nptv6_cfg *)(olh + 1);
	cfg->set = set;
	flags = 0;
	while (ac > 0) {
		tcmd = FUNC6(nptv6newcmds, *av, "option");
		ac--; av++;

		switch (tcmd) {
		case TOK_INTPREFIX:
			FUNC2("IPv6 prefix required");
			FUNC9(*av, &cfg->internal, &plen);
			flags |= NPTV6_HAS_INTPREFIX;
			if (plen > 0)
				goto check_prefix;
			ac--; av++;
			break;
		case TOK_EXTPREFIX:
			if (flags & NPTV6_HAS_EXTPREFIX)
				FUNC5(EX_USAGE,
				    "Only one ext_prefix or ext_if allowed");
			FUNC2("IPv6 prefix required");
			FUNC9(*av, &cfg->external, &plen);
			flags |= NPTV6_HAS_EXTPREFIX;
			if (plen > 0)
				goto check_prefix;
			ac--; av++;
			break;
		case TOK_EXTIF:
			if (flags & NPTV6_HAS_EXTPREFIX)
				FUNC5(EX_USAGE,
				    "Only one ext_prefix or ext_if allowed");
			FUNC2("Interface name required");
			if (FUNC11(*av) >= sizeof(cfg->if_name))
				FUNC5(EX_USAGE, "Invalid interface name");
			flags |= NPTV6_HAS_EXTPREFIX;
			cfg->flags |= NPTV6_DYNAMIC_PREFIX;
			FUNC12(cfg->if_name, *av, sizeof(cfg->if_name));
			ac--; av++;
			break;
		case TOK_PREFIXLEN:
			FUNC2("IPv6 prefix length required");
			plen = FUNC13(*av, &p, 10);
check_prefix:
			if (*p != '\0' || plen < 8 || plen > 64)
				FUNC5(EX_USAGE, "wrong prefix length: %s", *av);
			/* RFC 6296 Sec. 3.1 */
			if (cfg->plen > 0 && cfg->plen != plen) {
				FUNC14("Prefix length mismatch (%d vs %d).  "
				    "It was extended up to %d",
				    cfg->plen, plen, FUNC1(plen, cfg->plen));
				plen = FUNC1(plen, cfg->plen);
			}
			cfg->plen = plen;
			flags |= NPTV6_HAS_PREFIXLEN;
			ac--; av++;
			break;
		}
	}

	/* Check validness */
	if ((flags & NPTV6_HAS_INTPREFIX) != NPTV6_HAS_INTPREFIX)
		FUNC5(EX_USAGE, "int_prefix required");
	if ((flags & NPTV6_HAS_EXTPREFIX) != NPTV6_HAS_EXTPREFIX)
		FUNC5(EX_USAGE, "ext_prefix or ext_if required");
	if ((flags & NPTV6_HAS_PREFIXLEN) != NPTV6_HAS_PREFIXLEN)
		FUNC5(EX_USAGE, "prefixlen required");

	FUNC8(&mask, cfg->plen);
	FUNC0(&cfg->internal, &mask);
	if ((cfg->flags & NPTV6_DYNAMIC_PREFIX) == 0)
		FUNC0(&cfg->external, &mask);

	olh->count = 1;
	olh->objsize = sizeof(*cfg);
	olh->size = sizeof(buf);
	FUNC10(cfg->name, name, sizeof(cfg->name));
	if (FUNC3(IP_FW_NPTV6_CREATE, &olh->opheader, sizeof(buf)) != 0)
		FUNC4(EX_OSERR, "nptv6 instance creation failed");
}