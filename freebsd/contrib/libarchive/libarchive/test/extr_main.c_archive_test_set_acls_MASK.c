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
struct archive_test_acl_t {int /*<<< orphan*/  name; int /*<<< orphan*/  qual; int /*<<< orphan*/  tag; int /*<<< orphan*/  permset; int /*<<< orphan*/  type; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct archive_entry *ae,
    struct archive_test_acl_t *acls, int n)
{
	int i;

	FUNC1(ae);
	for (i = 0; i < n; i++) {
		FUNC3("type=%#010x, permset=%#010x, tag=%d, qual=%d name=%s",
		    acls[i].type, acls[i].permset, acls[i].tag,
		    acls[i].qual, acls[i].name);
		FUNC2(ARCHIVE_OK,
		    FUNC0(ae,
			acls[i].type, acls[i].permset, acls[i].tag,
			acls[i].qual, acls[i].name));
	}
}