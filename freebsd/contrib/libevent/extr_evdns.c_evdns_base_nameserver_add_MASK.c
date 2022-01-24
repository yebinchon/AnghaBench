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
struct TYPE_2__ {unsigned long s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int FUNC2 (struct evdns_base*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct evdns_base *base, unsigned long int address)
{
	struct sockaddr_in sin;
	int res;
	FUNC4(&sin, 0, sizeof(sin));
	sin.sin_addr.s_addr = address;
	sin.sin_port = FUNC3(53);
	sin.sin_family = AF_INET;
	FUNC0(base);
	res = FUNC2(base, (struct sockaddr*)&sin, sizeof(sin));
	FUNC1(base);
	return res;
}