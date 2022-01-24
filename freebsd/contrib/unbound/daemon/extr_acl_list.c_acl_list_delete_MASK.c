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
struct acl_list {int /*<<< orphan*/  region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void 
FUNC2(struct acl_list* acl)
{
	if(!acl) 
		return;
	FUNC1(acl->region);
	FUNC0(acl);
}