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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int FUNC2 (struct evdns_base*,int,char const* const) ; 

int
FUNC3(struct evdns_base *base, int flags, const char *const filename) {
	int res;
	FUNC0(base);
	res = FUNC2(base, flags, filename);
	FUNC1(base);
	return res;
}