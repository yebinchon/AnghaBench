#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pax {int flags; } ;
struct TYPE_2__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int /*<<< orphan*/  format_finish_entry; int /*<<< orphan*/  (* format_free ) (struct archive_write*) ;int /*<<< orphan*/  format_close; int /*<<< orphan*/  format_write_data; int /*<<< orphan*/  format_write_header; int /*<<< orphan*/  format_options; struct pax* format_data; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int WRITE_LIBARCHIVE_XATTR ; 
 int WRITE_SCHILY_XATTR ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_write_pax_close ; 
 int /*<<< orphan*/  archive_write_pax_data ; 
 int /*<<< orphan*/  archive_write_pax_finish_entry ; 
 int /*<<< orphan*/  FUNC2 (struct archive_write*) ; 
 int /*<<< orphan*/  archive_write_pax_header ; 
 int /*<<< orphan*/  archive_write_pax_options ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_write*) ; 

int
FUNC5(struct archive *_a)
{
	struct archive_write *a = (struct archive_write *)_a;
	struct pax *pax;

	FUNC0(_a, ARCHIVE_WRITE_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_write_set_format_pax");

	if (a->format_free != NULL)
		(a->format_free)(a);

	pax = (struct pax *)FUNC3(1, sizeof(*pax));
	if (pax == NULL) {
		FUNC1(&a->archive, ENOMEM,
		    "Can't allocate pax data");
		return (ARCHIVE_FATAL);
	}
	pax->flags = WRITE_LIBARCHIVE_XATTR | WRITE_SCHILY_XATTR;

	a->format_data = pax;
	a->format_name = "pax";
	a->format_options = archive_write_pax_options;
	a->format_write_header = archive_write_pax_header;
	a->format_write_data = archive_write_pax_data;
	a->format_close = archive_write_pax_close;
	a->format_free = archive_write_pax_free;
	a->format_finish_entry = archive_write_pax_finish_entry;
	a->archive.archive_format = ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE;
	a->archive.archive_format_name = "POSIX pax interchange";
	return (ARCHIVE_OK);
}