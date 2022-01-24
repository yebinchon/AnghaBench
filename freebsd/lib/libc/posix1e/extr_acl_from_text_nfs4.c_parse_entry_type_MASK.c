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
 int /*<<< orphan*/  ACL_ENTRY_TYPE_ALARM ; 
 int /*<<< orphan*/  ACL_ENTRY_TYPE_ALLOW ; 
 int /*<<< orphan*/  ACL_ENTRY_TYPE_AUDIT ; 
 int /*<<< orphan*/  ACL_ENTRY_TYPE_DENY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(const char *str, acl_entry_t entry)
{

	if (FUNC1(str, "allow") == 0)
		return (FUNC0(entry, ACL_ENTRY_TYPE_ALLOW));
	if (FUNC1(str, "deny") == 0)
		return (FUNC0(entry, ACL_ENTRY_TYPE_DENY));
	if (FUNC1(str, "audit") == 0)
		return (FUNC0(entry, ACL_ENTRY_TYPE_AUDIT));
	if (FUNC1(str, "alarm") == 0)
		return (FUNC0(entry, ACL_ENTRY_TYPE_ALARM));

	FUNC2("malformed ACL: invalid \"type\" field");

	return (-1);
}