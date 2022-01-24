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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  acl_tag_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(char *str, acl_entry_t entry, int *need_qualifier)
{
	int qualifier_length, error;
	uid_t id;
	acl_tag_t tag;

	FUNC3(need_qualifier != NULL);
	*need_qualifier = 0;

	qualifier_length = FUNC4(str);

	if (qualifier_length == 0) {
		FUNC5("malformed ACL: empty \"qualifier\" field");
		return (-1);
	}

	error = FUNC1(entry, &tag);
	if (error)
		return (error);

	error = FUNC0(tag, str, &id);
	if (error) {
		*need_qualifier = 1;
		return (0);
	}

	return (FUNC2(entry, &id));
}