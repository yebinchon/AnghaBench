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
struct delegpt {int dummy; } ;
struct config_stub {int /*<<< orphan*/  name; struct config_strlist* hosts; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int 
FUNC5(struct config_stub* s, struct delegpt* dp)
{
	struct config_strlist* p;
	uint8_t* dname;
	size_t dname_len;
	for(p = s->hosts; p; p = p->next) {
		FUNC2(p->str);
		dname = FUNC4(p->str, &dname_len);
		if(!dname) {
			FUNC3("cannot parse forward %s server name: '%s'", 
				s->name, p->str);
			return 0;
		}
		if(!FUNC0(dp, dname, 0)) {
			FUNC1(dname);
			FUNC3("out of memory");
			return 0;
		}
		FUNC1(dname);
	}
	return 1;
}