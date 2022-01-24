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
struct respip_set {char* const* tagname; int num_tags; } ;
struct config_strbytelist {struct config_strbytelist* str2; struct config_strbytelist* str; struct config_strbytelist* next; int /*<<< orphan*/  str2len; } ;
struct config_str2list {struct config_str2list* str2; struct config_str2list* str; struct config_str2list* next; int /*<<< orphan*/  str2len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct respip_set*,struct config_strbytelist*,struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC5 (struct respip_set*,struct config_strbytelist*,struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC6 (struct respip_set*,struct config_strbytelist*,struct config_strbytelist*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct respip_set* set, char* const* tagname, int num_tags,
	struct config_strbytelist* respip_tags,
	struct config_str2list* respip_actions,
	struct config_str2list* respip_data)
{
	struct config_strbytelist* p;
	struct config_str2list* pa;
	struct config_str2list* pd;

	set->tagname = tagname;
	set->num_tags = num_tags;

	p = respip_tags;
	while(p) {
		struct config_strbytelist* np = p->next;

		FUNC3(p->str && p->str2);
		if(!FUNC6(set, p->str, p->str2, p->str2len)) {
			FUNC0(p);
			return 0;
		}
		FUNC2(p->str);
		FUNC2(p->str2);
		FUNC2(p);
		p = np;
	}

	pa = respip_actions;
	while(pa) {
		struct config_str2list* np = pa->next;
		FUNC3(pa->str && pa->str2);
		if(!FUNC4(set, pa->str, pa->str2)) {
			FUNC1(pa);
			return 0;
		}
		FUNC2(pa->str);
		FUNC2(pa->str2);
		FUNC2(pa);
		pa = np;
	}

	pd = respip_data;
	while(pd) {
		struct config_str2list* np = pd->next;
		FUNC3(pd->str && pd->str2);
		if(!FUNC5(set, pd->str, pd->str2)) {
			FUNC1(pd);
			return 0;
		}
		FUNC2(pd->str);
		FUNC2(pd->str2);
		FUNC2(pd);
		pd = np;
	}

	return 1;
}