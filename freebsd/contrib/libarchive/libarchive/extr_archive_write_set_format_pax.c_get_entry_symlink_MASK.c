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
struct archive_write {int /*<<< orphan*/  archive; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 int FUNC0 (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ errno ; 

__attribute__((used)) static int
FUNC2(struct archive_write *a, struct archive_entry *entry,
    const char **name, size_t *length, struct archive_string_conv *sc)
{
	int r;

	r = FUNC0(entry, name, length, sc);
	if (r != 0) {
		if (errno == ENOMEM) {
			FUNC1(&a->archive, ENOMEM,
			    "Can't allocate memory for Linkname");
			return (ARCHIVE_FATAL);
		}
		return (ARCHIVE_WARN);
	}
	return (ARCHIVE_OK);
}