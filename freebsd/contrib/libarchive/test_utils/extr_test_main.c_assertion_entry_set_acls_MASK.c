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
 int FUNC0 (struct archive_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *file, int line, struct archive_entry *ae,
    struct archive_test_acl_t *acls, int n)
{
	int i, r, ret;

	FUNC2(file, line);

	ret = 0;
	FUNC1(ae);
	for (i = 0; i < n; i++) {
		r = FUNC0(ae,
		    acls[i].type, acls[i].permset, acls[i].tag,
		    acls[i].qual, acls[i].name);
		if (r != 0) {
			ret = 1;
			FUNC4(file, line, "type=%#010x, ",
			    "permset=%#010x, tag=%d, qual=%d name=%s",
			    acls[i].type, acls[i].permset, acls[i].tag,
			    acls[i].qual, acls[i].name);
			FUNC3(NULL);
		}
	}

	return (ret);
}