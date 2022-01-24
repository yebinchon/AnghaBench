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
struct file_info {int /*<<< orphan*/  name; struct file_info* parent; } ;
struct archive_string {char const* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(struct archive_string *as, struct file_info *file, int depth)
{
	// Plain ISO9660 only allows 8 dir levels; if we get
	// to 1000, then something is very, very wrong.
	if (depth > 1000) {
		return NULL;
	}
	if (file->parent != NULL && FUNC2(&file->parent->name) > 0) {
		if (FUNC3(as, file->parent, depth + 1) == NULL) {
			return NULL;
		}
		FUNC0(as, "/");
	}
	if (FUNC2(&file->name) == 0)
		FUNC0(as, ".");
	else
		FUNC1(as, &file->name);
	return (as->s);
}