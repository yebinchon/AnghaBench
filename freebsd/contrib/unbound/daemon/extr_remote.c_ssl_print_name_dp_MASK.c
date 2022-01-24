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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct delegpt_ns {int /*<<< orphan*/ * name; struct delegpt_ns* next; } ;
struct delegpt_addr {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; struct delegpt_ns* nslist; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC5(RES* ssl, const char* str, uint8_t* nm, uint16_t dclass,
	struct delegpt* dp)
{
	char buf[257];
	struct delegpt_ns* ns;
	struct delegpt_addr* a;
	int f = 0;
	if(str) { /* print header for forward, stub */
		char* c = FUNC3(dclass);
		FUNC1(nm, buf);
		if(!FUNC4(ssl, "%s %s %s ", buf, (c?c:"CLASS??"), str)) {
			FUNC2(c);
			return 0;
		}
		FUNC2(c);
	}
	for(ns = dp->nslist; ns; ns = ns->next) {
		FUNC1(ns->name, buf);
		if(!FUNC4(ssl, "%s%s", (f?" ":""), buf))
			return 0;
		f = 1;
	}
	for(a = dp->target_list; a; a = a->next_target) {
		FUNC0(&a->addr, a->addrlen, buf, sizeof(buf));
		if(!FUNC4(ssl, "%s%s", (f?" ":""), buf))
			return 0;
		f = 1;
	}
	return FUNC4(ssl, "\n");
}