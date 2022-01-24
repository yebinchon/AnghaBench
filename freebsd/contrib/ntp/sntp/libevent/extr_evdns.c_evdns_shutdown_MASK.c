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
 struct evdns_base* current_base ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_base*,int) ; 
 int /*<<< orphan*/ * evdns_log_fn ; 

void
FUNC1(int fail_requests)
{
	if (current_base) {
		struct evdns_base *b = current_base;
		current_base = NULL;
		FUNC0(b, fail_requests);
	}
	evdns_log_fn = NULL;
}