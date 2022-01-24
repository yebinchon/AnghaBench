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
struct raw {scalar_t__ entries_written; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFREG ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct archive_write *a, struct archive_entry *entry)
{
	struct raw *raw = (struct raw *)a->format_data;

	if (FUNC0(entry) != AE_IFREG) {
		FUNC1(&a->archive, ERANGE,
		    "Raw format only supports filetype AE_IFREG");
		return (ARCHIVE_FATAL);
	}


	if (raw->entries_written > 0) {
		FUNC1(&a->archive, ERANGE,
		    "Raw format only supports one entry per archive");
		return (ARCHIVE_FATAL);
	}
	raw->entries_written++;

	return (ARCHIVE_OK);
}