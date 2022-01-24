#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char const* uintmax_t ;
typedef  scalar_t__ uint8_t ;
struct ipfw_nat64clat_stats {scalar_t__ dropped; scalar_t__ nomem; scalar_t__ noproto; scalar_t__ noroute6; scalar_t__ noroute4; scalar_t__ oerrors; scalar_t__ ifrags; scalar_t__ ofrags; scalar_t__ opcnt46; scalar_t__ opcnt64; } ;
struct TYPE_2__ {scalar_t__ use_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 TYPE_1__ co ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__,struct ipfw_nat64clat_stats*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *name, uint8_t set)
{
	struct ipfw_nat64clat_stats stats;

	if (FUNC1(name, set, &stats) != 0)
		FUNC0(EX_OSERR, "Error retrieving stats");

	if (co.use_set != 0 || set != 0)
		FUNC2("set %u ", set);
	FUNC2("nat64clat %s\n", name);

	FUNC2("\t%ju packets translated from IPv6 to IPv4\n",
	    (uintmax_t)stats.opcnt64);
	FUNC2("\t%ju packets translated from IPv4 to IPv6\n",
	    (uintmax_t)stats.opcnt46);
	FUNC2("\t%ju IPv6 fragments created\n",
	    (uintmax_t)stats.ofrags);
	FUNC2("\t%ju IPv4 fragments received\n",
	    (uintmax_t)stats.ifrags);
	FUNC2("\t%ju output packets dropped due to no bufs, etc.\n",
	    (uintmax_t)stats.oerrors);
	FUNC2("\t%ju output packets discarded due to no IPv4 route\n",
	    (uintmax_t)stats.noroute4);
	FUNC2("\t%ju output packets discarded due to no IPv6 route\n",
	    (uintmax_t)stats.noroute6);
	FUNC2("\t%ju packets discarded due to unsupported protocol\n",
	    (uintmax_t)stats.noproto);
	FUNC2("\t%ju packets discarded due to memory allocation problems\n",
	    (uintmax_t)stats.nomem);
	FUNC2("\t%ju packets discarded due to some errors\n",
	    (uintmax_t)stats.dropped);
}