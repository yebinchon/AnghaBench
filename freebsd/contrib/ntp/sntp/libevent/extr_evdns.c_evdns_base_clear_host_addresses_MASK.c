#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hosts_entry {int dummy; } ;
struct evdns_base {int /*<<< orphan*/  hostsdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 struct hosts_entry* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hosts_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hosts_entry*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC5(struct evdns_base *base)
{
	struct hosts_entry *victim;
	FUNC0(base);
	while ((victim = FUNC2(&base->hostsdb))) {
		FUNC3(&base->hostsdb, victim, next);
		FUNC4(victim);
	}
	FUNC1(base);
}