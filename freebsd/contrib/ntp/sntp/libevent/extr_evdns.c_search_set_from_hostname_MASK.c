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
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  HOST_NAME_MAX ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_base*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void
FUNC5(struct evdns_base *base) {
	char hostname[HOST_NAME_MAX + 1], *domainname;

	FUNC0(base);
	FUNC3(base);
	if (FUNC1(hostname, sizeof(hostname))) return;
	domainname = FUNC4(hostname, '.');
	if (!domainname) return;
	FUNC2(base, domainname);
}