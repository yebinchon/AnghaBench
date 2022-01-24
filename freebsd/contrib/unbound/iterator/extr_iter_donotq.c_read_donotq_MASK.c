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
struct iter_donotq {int dummy; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* donotqueryaddrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iter_donotq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC2(struct iter_donotq* dq, struct config_file* cfg)
{
	struct config_strlist* p;
	for(p = cfg->donotqueryaddrs; p; p = p->next) {
		FUNC1(p->str);
		if(!FUNC0(dq, p->str))
			return 0;
	}
	return 1;
}