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
struct ipfw_nptv6_stats {scalar_t__ dropped; scalar_t__ ex2in; scalar_t__ in2ex; } ;
struct TYPE_2__ {scalar_t__ use_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 TYPE_1__ co ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__,struct ipfw_nptv6_stats*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *name, uint8_t set)
{
	struct ipfw_nptv6_stats stats;

	if (FUNC1(name, set, &stats) != 0)
		FUNC0(EX_OSERR, "Error retrieving stats");

	if (co.use_set != 0 || set != 0)
		FUNC2("set %u ", set);
	FUNC2("nptv6 %s\n", name);
	FUNC2("\t%ju packets translated (internal to external)\n",
	    (uintmax_t)stats.in2ex);
	FUNC2("\t%ju packets translated (external to internal)\n",
	    (uintmax_t)stats.ex2in);
	FUNC2("\t%ju packets dropped due to some error\n",
	    (uintmax_t)stats.dropped);
}