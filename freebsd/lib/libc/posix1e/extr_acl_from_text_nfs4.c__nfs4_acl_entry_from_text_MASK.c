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
typedef  int /*<<< orphan*/  acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 scalar_t__ ACL_BRAND_NFS4 ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int*) ; 
 char* FUNC11 (char*) ; 
 char* FUNC12 (char**,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int
FUNC14(acl_t aclp, char *str)
{
	int error, need_qualifier;
	acl_entry_t entry;
	char *field, *qualifier_field;

	error = FUNC1(&aclp, &entry);
	if (error)
		return (error);

	FUNC3(FUNC0(entry) == ACL_BRAND_NFS4);

	if (str == NULL)
		goto truncated_entry;
	field = FUNC12(&str, ":");

	field = FUNC11(field);
	if ((*field == '\0') && (!str)) {
		/*
		 * Is an entirely comment line, skip to next
		 * comma.
		 */
		return (0);
	}

	error = FUNC10(field, entry, &need_qualifier);
	if (error)
		goto malformed_field;

	if (need_qualifier) {
		if (str == NULL)
			goto truncated_entry;
		qualifier_field = field = FUNC12(&str, ":");
		error = FUNC9(field, entry, &need_qualifier);
		if (error)
			goto malformed_field;
	}

	if (str == NULL)
		goto truncated_entry;
	field = FUNC12(&str, ":");
	error = FUNC5(field, entry);
	if (error)
		goto malformed_field;

	if (str == NULL)
		goto truncated_entry;
	/* Do we have "flags" field? */
	if (FUNC4(str) > 0) {
		field = FUNC12(&str, ":");
		error = FUNC8(field, entry);
		if (error)
			goto malformed_field;
	}

	if (str == NULL)
		goto truncated_entry;
	field = FUNC12(&str, ":");
	error = FUNC7(field, entry);
	if (error)
		goto malformed_field;

	if (need_qualifier) {
		if (str == NULL) {
			FUNC13("malformed ACL: unknown user or group name "
			    "\"%s\"", qualifier_field);
			goto truncated_entry;
		}

		error = FUNC6(str, entry);
		if (error)
			goto malformed_field;
	}

	return (0);

truncated_entry:
malformed_field:
	FUNC2(aclp, entry);
	errno = EINVAL;
	return (-1);
}