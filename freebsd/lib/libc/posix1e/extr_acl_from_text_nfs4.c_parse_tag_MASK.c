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
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_EVERYONE ; 
 int /*<<< orphan*/  ACL_GROUP ; 
 int /*<<< orphan*/  ACL_GROUP_OBJ ; 
 int /*<<< orphan*/  ACL_USER ; 
 int /*<<< orphan*/  ACL_USER_OBJ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(const char *str, acl_entry_t entry, int *need_qualifier)
{

	FUNC1(need_qualifier != NULL);
	*need_qualifier = 0;

	if (FUNC2(str, "owner@") == 0)
		return (FUNC0(entry, ACL_USER_OBJ));
	if (FUNC2(str, "group@") == 0)
		return (FUNC0(entry, ACL_GROUP_OBJ));
	if (FUNC2(str, "everyone@") == 0)
		return (FUNC0(entry, ACL_EVERYONE));

	*need_qualifier = 1;

	if (FUNC2(str, "user") == 0 || FUNC2(str, "u") == 0)
		return (FUNC0(entry, ACL_USER));
	if (FUNC2(str, "group") == 0 || FUNC2(str, "g") == 0)
		return (FUNC0(entry, ACL_GROUP));

	FUNC3("malformed ACL: invalid \"tag\" field");

	return (-1);
}