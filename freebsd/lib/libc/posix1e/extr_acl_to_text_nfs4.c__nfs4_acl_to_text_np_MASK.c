#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  TYPE_2__* acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;
struct TYPE_5__ {int acl_cnt; } ;
struct TYPE_6__ {TYPE_1__ ats_acl; } ;

/* Variables and functions */
 int ACL_FIRST_ENTRY ; 
 int ACL_NEXT_ENTRY ; 
 int /*<<< orphan*/  EINVAL ; 
 int MAX_ENTRY_LENGTH ; 
 int FUNC0 (TYPE_2__* const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

char *
FUNC7(const acl_t aclp, ssize_t *len_p, int flags)
{
	int error, off = 0, size, entry_id = ACL_FIRST_ENTRY;
	char *str;
	acl_entry_t entry;

	if (aclp->ats_acl.acl_cnt == 0)
		return FUNC5("");

	size = aclp->ats_acl.acl_cnt * MAX_ENTRY_LENGTH;
	str = FUNC4(size);
	if (str == NULL)
		return (NULL);

	while (FUNC0(aclp, entry_id, &entry) == 1) {
		entry_id = ACL_NEXT_ENTRY;

		FUNC1(off < size);

		error = FUNC2(str + off, size - off, entry, flags);
		if (error) {
			FUNC3(str);
			errno = EINVAL;
			return (NULL);
		}

		off = FUNC6(str);
	}

	FUNC1(off < size);
	str[off] = '\0';

	if (len_p != NULL)
		*len_p = off;

	return (str);
}