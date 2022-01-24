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
struct archive_read_extract {int /*<<< orphan*/ * ad; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct archive_read_extract* FUNC0 (struct archive_read*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct archive_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct archive *_a, struct archive_entry *entry, int flags)
{
	struct archive_read_extract *extract;
	struct archive_read * a = (struct archive_read *)_a;

	extract = FUNC0(a);
	if (extract == NULL)
		return (ARCHIVE_FATAL);

	/* If we haven't initialized the archive_write_disk object, do it now. */
	if (extract->ad == NULL) {
		extract->ad = FUNC3();
		if (extract->ad == NULL) {
			FUNC2(&a->archive, ENOMEM, "Can't extract");
			return (ARCHIVE_FATAL);
		}
		FUNC5(extract->ad);
	}

	FUNC4(extract->ad, flags);
	return (FUNC1(&a->archive, entry, extract->ad));
}