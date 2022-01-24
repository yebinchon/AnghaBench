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
struct archive_test_acl_t {int type; int permset; int tag; int qual; char const* name; } ;
struct archive_entry {int dummy; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  marker ;

/* Variables and functions */
 int ARCHIVE_ENTRY_ACL_GROUP_OBJ ; 
 int ARCHIVE_ENTRY_ACL_OTHER ; 
 int ARCHIVE_ENTRY_ACL_TYPE_ACCESS ; 
 int ARCHIVE_ENTRY_ACL_USER_OBJ ; 
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int FUNC0 (struct archive_entry*,int,int*,int*,int*,int*,char const**) ; 
 int FUNC1 (struct archive_entry*) ; 
 scalar_t__ FUNC2 (struct archive_test_acl_t*,int,int,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(struct archive_entry *ae,
    struct archive_test_acl_t *acls, int cnt, int want_type, int mode)
{
	int *marker;
	int i, r, n;
	int type, permset, tag, qual;
	int matched;
	const char *name;

	n = 0;
	marker = FUNC7(sizeof(marker[0]) * cnt);

	for (i = 0; i < cnt; i++) {
		if ((acls[i].type & want_type) != 0) {
			marker[n] = i;
			n++;
		}
	}

	FUNC5("No ACL's to compare, type mask: %d", want_type);
	FUNC3(n > 0);
	if (n == 0)
		return;

	while (0 == (r = FUNC0(ae, want_type,
			 &type, &permset, &tag, &qual, &name))) {
		for (i = 0, matched = 0; i < n && !matched; i++) {
			if (FUNC2(&acls[marker[i]], type,
			    permset, tag, qual, name)) {
				/* We found a match; remove it. */
				marker[i] = marker[n - 1];
				n--;
				matched = 1;
			}
		}
		if (type == ARCHIVE_ENTRY_ACL_TYPE_ACCESS
		    && tag == ARCHIVE_ENTRY_ACL_USER_OBJ) {
			if (!matched) FUNC8("No match for user_obj perm\n");
			FUNC5("USER_OBJ permset (%02o) != user mode (%02o)",
			    permset, 07 & (mode >> 6));
			FUNC3((permset << 6) == (mode & 0700));
		} else if (type == ARCHIVE_ENTRY_ACL_TYPE_ACCESS
		    && tag == ARCHIVE_ENTRY_ACL_GROUP_OBJ) {
			if (!matched) FUNC8("No match for group_obj perm\n");
			FUNC5("GROUP_OBJ permset %02o != group mode %02o",
			    permset, 07 & (mode >> 3));
			FUNC3((permset << 3) == (mode & 0070));
		} else if (type == ARCHIVE_ENTRY_ACL_TYPE_ACCESS
		    && tag == ARCHIVE_ENTRY_ACL_OTHER) {
			if (!matched) FUNC8("No match for other perm\n");
			FUNC5("OTHER permset (%02o) != other mode (%02o)",
			    permset, mode & 07);
			FUNC3((permset << 0) == (mode & 0007));
		} else {
			FUNC5("Could not find match for ACL "
			    "(type=%#010x,permset=%#010x,tag=%d,qual=%d,"
			    "name=``%s'')", type, permset, tag, qual, name);
			FUNC3(matched == 1);
		}
	}
	FUNC4(ARCHIVE_EOF, r);
	if ((want_type & ARCHIVE_ENTRY_ACL_TYPE_ACCESS) != 0)
		FUNC3((mode_t)(mode & 0777) == (FUNC1(ae)
		    & 0777));
	FUNC5("Could not find match for ACL "
	    "(type=%#010x,permset=%#010x,tag=%d,qual=%d,name=``%s'')",
	    acls[marker[0]].type, acls[marker[0]].permset,
	    acls[marker[0]].tag, acls[marker[0]].qual, acls[marker[0]].name);
	FUNC3(n == 0); /* Number of ACLs not matched should == 0 */
	FUNC6(marker);
}