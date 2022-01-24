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
struct archive_read {int /*<<< orphan*/  archive; int /*<<< orphan*/  skip_file_ino; int /*<<< orphan*/  skip_file_dev; scalar_t__ skip_file_set; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct archive*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*,struct archive_entry*) ; 
 int FUNC6 (struct archive*,struct archive*) ; 

int
FUNC7(struct archive *_a, struct archive_entry *entry,
    struct archive *ad)
{
	struct archive_read *a = (struct archive_read *)_a;
	int r, r2;

	/* Set up for this particular entry. */
	if (a->skip_file_set)
		FUNC3(ad,
		    a->skip_file_dev, a->skip_file_ino);
	r = FUNC5(ad, entry);
	if (r < ARCHIVE_WARN)
		r = ARCHIVE_WARN;
	if (r != ARCHIVE_OK)
		/* If _write_header failed, copy the error. */
 		FUNC0(&a->archive, ad);
	else if (!FUNC2(entry) || FUNC1(entry) > 0)
		/* Otherwise, pour data into the entry. */
		r = FUNC6(_a, ad);
	r2 = FUNC4(ad);
	if (r2 < ARCHIVE_WARN)
		r2 = ARCHIVE_WARN;
	/* Use the first message. */
	if (r2 != ARCHIVE_OK && r == ARCHIVE_OK)
		FUNC0(&a->archive, ad);
	/* Use the worst error return. */
	if (r2 < r)
		r = r2;
	return (r);
}