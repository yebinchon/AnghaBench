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
typedef  int /*<<< orphan*/  uintmax_t ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct ar_w {scalar_t__ entry_bytes_remaining; int entry_padding; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int FUNC0 (struct archive_write*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC2(struct archive_write *a)
{
	struct ar_w *ar;
	int ret;

	ar = (struct ar_w *)a->format_data;

	if (ar->entry_bytes_remaining != 0) {
		FUNC1(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Entry remaining bytes larger than 0");
		return (ARCHIVE_WARN);
	}

	if (ar->entry_padding == 0) {
		return (ARCHIVE_OK);
	}

	if (ar->entry_padding != 1) {
		FUNC1(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Padding wrong size: %ju should be 1 or 0",
		    (uintmax_t)ar->entry_padding);
		return (ARCHIVE_WARN);
	}

	ret = FUNC0(a, "\n", 1);
	return (ret);
}