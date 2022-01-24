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
typedef  int /*<<< orphan*/  id_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char *str, acl_entry_t entry)
{
	int qualifier_length;
	char *end;
	id_t id;

	qualifier_length = FUNC1(str);
	if (qualifier_length == 0) {
		FUNC3("malformed ACL: \"appended id\" field present, "
	           "but empty");
		return (-1);
	}

	id = FUNC2(str, &end);
	if (end - str != qualifier_length) {
		FUNC3("malformed ACL: appended id is not a number");
		return (-1);
	}

	return (FUNC0(entry, &id));
}