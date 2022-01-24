#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct raw_info {scalar_t__ end_of_file; } ;
struct TYPE_4__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_RAW ; 
 int FUNC0 (struct archive_read*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a,
    struct archive_entry *entry)
{
	struct raw_info *info;

	info = (struct raw_info *)(a->format->data);
	if (info->end_of_file)
		return (ARCHIVE_EOF);

	a->archive.archive_format = ARCHIVE_FORMAT_RAW;
	a->archive.archive_format_name = "raw";
	FUNC2(entry, "data");
	FUNC1(entry, AE_IFREG);
	FUNC3(entry, 0644);
	/* I'm deliberately leaving most fields unset here. */

	/* Let the filter fill out any fields it might have. */
	return FUNC0(a, entry);
}