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
struct views {int dummy; } ;
struct acl_list {int dummy; } ;
struct acl_addr {TYPE_1__* view; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct acl_addr* FUNC0 (struct acl_list*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 TYPE_1__* FUNC3 (struct views*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct acl_list* acl, const char* str, const char* str2,
	struct views* vs)
{
	struct acl_addr* node;
	if(!(node=FUNC0(acl, str)))
		return 0;
	node->view = FUNC3(vs, str2, 0 /* get read lock*/);
	if(!node->view) {
		FUNC2("no view with name: %s", str2);
		return 0;
	}
	FUNC1(&node->view->lock);
	return 1;
}