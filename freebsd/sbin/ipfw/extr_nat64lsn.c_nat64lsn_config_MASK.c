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
typedef  void* uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  opheader; int /*<<< orphan*/  ntlv; } ;
typedef  TYPE_1__ ipfw_obj_header ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  states_chunks; void* st_icmp_ttl; void* st_udp_ttl; void* st_estab_ttl; void* st_close_ttl; void* st_syn_ttl; void* pg_delete_delay; void* nh_delete_delay; void* jmaxlen; void* max_ports; } ;
typedef  TYPE_2__ ipfw_nat64lsn_cfg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IP_FW_NAT64LSN_CONFIG ; 
 int /*<<< orphan*/  NAT64_ALLOW_PRIVATE ; 
 int /*<<< orphan*/  NAT64_LOG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  TOK_HOST_DEL_AGE 141 
#define  TOK_ICMP_AGE 140 
#define  TOK_JMAXLEN 139 
#define  TOK_LOG 138 
#define  TOK_LOGOFF 137 
#define  TOK_MAX_PORTS 136 
#define  TOK_PG_DEL_AGE 135 
#define  TOK_PRIVATE 134 
#define  TOK_PRIVATEOFF 133 
#define  TOK_STATES_CHUNKS 132 
#define  TOK_TCP_CLOSE_AGE 131 
#define  TOK_TCP_EST_AGE 130 
#define  TOK_TCP_SYN_AGE 129 
#define  TOK_UDP_AGE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  nat64newcmds ; 

__attribute__((used)) static void
FUNC9(const char *name, uint8_t set, int ac, char **av)
{
	char buf[sizeof(ipfw_obj_header) + sizeof(ipfw_nat64lsn_cfg)];
	ipfw_nat64lsn_cfg *cfg;
	ipfw_obj_header *oh;
	size_t sz;
	char *opt;
	int tcmd;

	if (ac == 0)
		FUNC4(EX_USAGE, "config options required");
	FUNC6(&buf, 0, sizeof(buf));
	oh = (ipfw_obj_header *)buf;
	cfg = (ipfw_nat64lsn_cfg *)(oh + 1);
	sz = sizeof(buf);

	FUNC7(&oh->ntlv, name, set);
	if (FUNC1(IP_FW_NAT64LSN_CONFIG, &oh->opheader, &sz) != 0)
		FUNC3(EX_OSERR, "failed to get config for instance %s", name);

	while (ac > 0) {
		tcmd = FUNC5(nat64newcmds, *av, "option");
		opt = *av;
		ac--; av++;

		switch (tcmd) {
		case TOK_MAX_PORTS:
			FUNC0("Max per-user ports required");
			cfg->max_ports = FUNC8(*av, opt);
			ac--; av++;
			break;
		case TOK_JMAXLEN:
			FUNC0("job queue length required");
			cfg->jmaxlen = FUNC8(*av, opt);
			ac--; av++;
			break;
		case TOK_HOST_DEL_AGE:
			FUNC0("host delete delay required");
			cfg->nh_delete_delay = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_PG_DEL_AGE:
			FUNC0("portgroup delete delay required");
			cfg->pg_delete_delay = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_TCP_SYN_AGE:
			FUNC0("tcp syn age required");
			cfg->st_syn_ttl = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_TCP_CLOSE_AGE:
			FUNC0("tcp close age required");
			cfg->st_close_ttl = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_TCP_EST_AGE:
			FUNC0("tcp est age required");
			cfg->st_estab_ttl = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_UDP_AGE:
			FUNC0("udp age required");
			cfg->st_udp_ttl = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_ICMP_AGE:
			FUNC0("icmp age required");
			cfg->st_icmp_ttl = (uint16_t)FUNC8(
			    *av, opt);
			ac--; av++;
			break;
		case TOK_STATES_CHUNKS:
			FUNC0("number of chunks required");
			cfg->states_chunks = (uint8_t)FUNC8(
			    *av, opt);
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
		default:
			FUNC4(EX_USAGE, "Can't change %s option", opt);
		}
	}

	if (FUNC2(IP_FW_NAT64LSN_CONFIG, &oh->opheader, sizeof(buf)) != 0)
		FUNC3(EX_OSERR, "nat64lsn instance configuration failed");
}