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
struct config_strbytelist {struct config_strbytelist* str2; struct config_strbytelist* str; struct config_strbytelist* next; int /*<<< orphan*/  str2len; } ;
struct config_file {struct config_strbytelist* acl_tags; } ;
struct acl_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl_list*,struct config_strbytelist*,struct config_strbytelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_strbytelist*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int 
FUNC4(struct acl_list* acl, struct config_file* cfg)
{
	struct config_strbytelist* np, *p = cfg->acl_tags;
	cfg->acl_tags = NULL;
	while(p) {
		FUNC3(p->str && p->str2);
		if(!FUNC0(acl, p->str, p->str2, p->str2len)) {
			FUNC1(p);
			return 0;
		}
		/* free the items as we go to free up memory */
		np = p->next;
		FUNC2(p->str);
		FUNC2(p->str2);
		FUNC2(p);
		p = np;
	}
	return 1;
}