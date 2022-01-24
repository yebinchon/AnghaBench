#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_7__ {char* name; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_8__ {char* name; scalar_t__ set; int plen6; int flags; int /*<<< orphan*/  prefix6; TYPE_2__ ntlv6; TYPE_1__ ntlv4; } ;
typedef  TYPE_3__ ipfw_nat64stl_cfg ;
typedef  int /*<<< orphan*/  abuf ;
struct TYPE_9__ {scalar_t__ use_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int ESRCH ; 
 int INET6_ADDRSTRLEN ; 
 int NAT64_ALLOW_PRIVATE ; 
 int NAT64_LOG ; 
 TYPE_5__ co ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static int
FUNC3(ipfw_nat64stl_cfg *cfg, const char *name, uint8_t set)
{
	char abuf[INET6_ADDRSTRLEN];

	if (name != NULL && FUNC2(cfg->name, name) != 0)
		return (ESRCH);

	if (co.use_set != 0 && cfg->set != set)
		return (ESRCH);

	if (co.use_set != 0 || cfg->set != 0)
		FUNC1("set %u ", cfg->set);

	FUNC1("nat64stl %s table4 %s table6 %s",
	    cfg->name, cfg->ntlv4.name, cfg->ntlv6.name);
	FUNC0(AF_INET6, &cfg->prefix6, abuf, sizeof(abuf));
	FUNC1(" prefix6 %s/%u", abuf, cfg->plen6);
	if (cfg->flags & NAT64_LOG)
		FUNC1(" log");
	if (cfg->flags & NAT64_ALLOW_PRIVATE)
		FUNC1(" allow_private");
	FUNC1("\n");
	return (0);
}