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
struct config_str2list {scalar_t__ str2; scalar_t__ str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* acls; } ;
struct acl_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl_list*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int 
FUNC2(struct acl_list* acl, struct config_file* cfg)
{
	struct config_str2list* p;
	for(p = cfg->acls; p; p = p->next) {
		FUNC1(p->str && p->str2);
		if(!FUNC0(acl, p->str, p->str2, 1))
			return 0;
	}
	return 1;
}