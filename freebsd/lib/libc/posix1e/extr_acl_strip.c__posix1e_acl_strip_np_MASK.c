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
typedef  int acl_tag_t ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 scalar_t__ ACL_BRAND_POSIX ; 
 int ACL_FIRST_ENTRY ; 
#define  ACL_GROUP_OBJ 131 
#define  ACL_MASK 130 
 int /*<<< orphan*/  ACL_MAX_ENTRIES ; 
 int ACL_NEXT_ENTRY ; 
#define  ACL_OTHER 129 
 int ACL_UNDEFINED_TAG ; 
#define  ACL_USER_OBJ 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static acl_t
FUNC11(const acl_t aclp, int recalculate_mask)
{
	acl_t acl_new, acl_old;
	acl_entry_t entry, entry_new;
	acl_tag_t tag;
	int entry_id, have_mask_entry;

	FUNC10(FUNC0(aclp) == ACL_BRAND_POSIX);

	acl_old = FUNC5(aclp);
	if (acl_old == NULL)
		return (NULL);

	FUNC10(FUNC0(acl_old) == ACL_BRAND_POSIX);

	have_mask_entry = 0;
	acl_new = FUNC9(ACL_MAX_ENTRIES);
	if (acl_new == NULL) {
		FUNC6(acl_old);
		return (NULL);
	}
	tag = ACL_UNDEFINED_TAG;

	/* only save the default user/group/other entries */
	entry_id = ACL_FIRST_ENTRY;
	while (FUNC7(acl_old, entry_id, &entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;

		FUNC10(FUNC1(entry) == ACL_BRAND_POSIX);

		if (FUNC8(entry, &tag) == -1)
			goto fail;

		switch(tag) {
		case ACL_USER_OBJ:
		case ACL_GROUP_OBJ:
		case ACL_OTHER:
			if (FUNC4(&acl_new, &entry_new) == -1)
				goto fail;
			if (FUNC3(entry_new, entry) == -1)
				goto fail;
			FUNC10(FUNC1(entry_new) == ACL_BRAND_POSIX);
			break;
		case ACL_MASK:
			have_mask_entry = 1;
			break;
		default:
			break;
		}
	}

	FUNC10(FUNC0(acl_new) == ACL_BRAND_POSIX);

	if (have_mask_entry && recalculate_mask) {
		if (FUNC2(&acl_new) == -1)
			goto fail;
	}

	return (acl_new);

fail:
	FUNC6(acl_new);
	FUNC6(acl_old);

	return (NULL);
}