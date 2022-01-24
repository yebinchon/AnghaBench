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
struct sockaddr {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*) ; 
 int FUNC3 (struct evdns_base*,struct sockaddr const*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct evdns_base *base,
    const struct sockaddr *sa, ev_socklen_t len, unsigned flags)
{
	int res;
	FUNC2(base);
	FUNC0(base);
	res = FUNC3(base, sa, len);
	FUNC1(base);
	return res;
}