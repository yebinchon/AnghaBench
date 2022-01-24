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
struct views {int dummy; } ;
struct config_str2list {struct config_str2list* str2; struct config_str2list* str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* acl_view; } ;
struct acl_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl_list*,struct config_str2list*,struct config_str2list*,struct views*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_str2list*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int 
FUNC3(struct acl_list* acl, struct config_file* cfg, struct views* v)
{
	struct config_str2list* np, *p = cfg->acl_view;
	cfg->acl_view = NULL;
	while(p) {
		FUNC2(p->str && p->str2);
		if(!FUNC0(acl, p->str, p->str2, v)) {
			return 0;
		}
		/* free the items as we go to free up memory */
		np = p->next;
		FUNC1(p->str);
		FUNC1(p->str2);
		FUNC1(p);
		p = np;
	}
	return 1;
}