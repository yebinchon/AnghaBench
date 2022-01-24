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
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;
struct ar {int /*<<< orphan*/ * strtab; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_read*,struct ar*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_read_format_ar_bid ; 
 int /*<<< orphan*/  archive_read_format_ar_cleanup ; 
 int /*<<< orphan*/  archive_read_format_ar_read_data ; 
 int /*<<< orphan*/  archive_read_format_ar_read_header ; 
 int /*<<< orphan*/  archive_read_format_ar_skip ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar*) ; 

int
FUNC5(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct ar *ar;
	int r;

	FUNC1(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_format_ar");

	ar = (struct ar *)FUNC3(1, sizeof(*ar));
	if (ar == NULL) {
		FUNC2(&a->archive, ENOMEM,
		    "Can't allocate ar data");
		return (ARCHIVE_FATAL);
	}
	ar->strtab = NULL;

	r = FUNC0(a,
	    ar,
	    "ar",
	    archive_read_format_ar_bid,
	    NULL,
	    archive_read_format_ar_read_header,
	    archive_read_format_ar_read_data,
	    archive_read_format_ar_skip,
	    NULL,
	    archive_read_format_ar_cleanup,
	    NULL,
	    NULL);

	if (r != ARCHIVE_OK) {
		FUNC4(ar);
		return (r);
	}
	return (ARCHIVE_OK);
}