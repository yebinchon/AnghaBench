#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {char* name; scalar_t__ set; int plen4; int plen6; int states_chunks; int nh_delete_delay; int pg_delete_delay; int st_syn_ttl; int st_close_ttl; int st_estab_ttl; int st_udp_ttl; int st_icmp_ttl; int jmaxlen; int flags; int /*<<< orphan*/  prefix6; int /*<<< orphan*/  prefix4; } ;
typedef  TYPE_1__ ipfw_nat64lsn_cfg ;
typedef  int /*<<< orphan*/  abuf ;
struct TYPE_5__ {scalar_t__ use_set; scalar_t__ verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int ESRCH ; 
 int INET6_ADDRSTRLEN ; 
 int NAT64LSN_HOST_AGE ; 
 int NAT64LSN_ICMP_AGE ; 
 int NAT64LSN_JMAXLEN ; 
 int NAT64LSN_PG_AGE ; 
 int NAT64LSN_TCP_EST_AGE ; 
 int NAT64LSN_TCP_FIN_AGE ; 
 int NAT64LSN_TCP_SYN_AGE ; 
 int NAT64LSN_UDP_AGE ; 
 int NAT64_ALLOW_PRIVATE ; 
 int NAT64_LOG ; 
 TYPE_3__ co ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(ipfw_nat64lsn_cfg *cfg, const char *name, uint8_t set)
{
	char abuf[INET6_ADDRSTRLEN];

	if (name != NULL && FUNC2(cfg->name, name) != 0)
		return (ESRCH);

	if (co.use_set != 0 && cfg->set != set)
		return (ESRCH);

	if (co.use_set != 0 || cfg->set != 0)
		FUNC1("set %u ", cfg->set);
	FUNC0(AF_INET, &cfg->prefix4, abuf, sizeof(abuf));
	FUNC1("nat64lsn %s prefix4 %s/%u", cfg->name, abuf, cfg->plen4);
	FUNC0(AF_INET6, &cfg->prefix6, abuf, sizeof(abuf));
	FUNC1(" prefix6 %s/%u", abuf, cfg->plen6);
	if (co.verbose || cfg->states_chunks > 1)
		FUNC1(" states_chunks %u", cfg->states_chunks);
	if (co.verbose || cfg->nh_delete_delay != NAT64LSN_HOST_AGE)
		FUNC1(" host_del_age %u", cfg->nh_delete_delay);
	if (co.verbose || cfg->pg_delete_delay != NAT64LSN_PG_AGE)
		FUNC1(" pg_del_age %u", cfg->pg_delete_delay);
	if (co.verbose || cfg->st_syn_ttl != NAT64LSN_TCP_SYN_AGE)
		FUNC1(" tcp_syn_age %u", cfg->st_syn_ttl);
	if (co.verbose || cfg->st_close_ttl != NAT64LSN_TCP_FIN_AGE)
		FUNC1(" tcp_close_age %u", cfg->st_close_ttl);
	if (co.verbose || cfg->st_estab_ttl != NAT64LSN_TCP_EST_AGE)
		FUNC1(" tcp_est_age %u", cfg->st_estab_ttl);
	if (co.verbose || cfg->st_udp_ttl != NAT64LSN_UDP_AGE)
		FUNC1(" udp_age %u", cfg->st_udp_ttl);
	if (co.verbose || cfg->st_icmp_ttl != NAT64LSN_ICMP_AGE)
		FUNC1(" icmp_age %u", cfg->st_icmp_ttl);
	if (co.verbose || cfg->jmaxlen != NAT64LSN_JMAXLEN)
		FUNC1(" jmaxlen %u", cfg->jmaxlen);
	if (cfg->flags & NAT64_LOG)
		FUNC1(" log");
	if (cfg->flags & NAT64_ALLOW_PRIVATE)
		FUNC1(" allow_private");
	FUNC1("\n");
	return (0);
}