#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  id; int /*<<< orphan*/  boot_filename; int /*<<< orphan*/  catalog_filename; } ;
struct TYPE_7__ {int max_depth; struct iso9660* pathtbl; int /*<<< orphan*/  rootent; } ;
struct TYPE_6__ {scalar_t__ joliet; } ;
struct TYPE_5__ {int max_depth; struct iso9660* pathtbl; int /*<<< orphan*/  rootent; } ;
struct iso9660 {scalar_t__ temp_fd; int /*<<< orphan*/  mbs; int /*<<< orphan*/  utf16be; TYPE_4__ el_torito; int /*<<< orphan*/  bibliographic_file_identifier; int /*<<< orphan*/  abstract_file_identifier; int /*<<< orphan*/  copyright_file_identifier; int /*<<< orphan*/  application_identifier; int /*<<< orphan*/  data_preparer_identifier; int /*<<< orphan*/  publisher_identifier; int /*<<< orphan*/  volume_identifier; int /*<<< orphan*/  cur_dirstr; TYPE_3__ joliet; struct iso9660* sorted; TYPE_2__ opt; TYPE_1__ primary; } ;
struct archive_write {struct iso9660* format_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iso9660*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iso9660*) ; 
 int /*<<< orphan*/  FUNC5 (struct iso9660*) ; 
 int FUNC6 (struct archive_write*) ; 

__attribute__((used)) static int
FUNC7(struct archive_write *a)
{
	struct iso9660 *iso9660;
	int i, ret;

	iso9660 = a->format_data;

	/* Close the temporary file. */
	if (iso9660->temp_fd >= 0)
		FUNC1(iso9660->temp_fd);

	/* Free some stuff for zisofs operations. */
	ret = FUNC6(a);

	/* Remove directory entries in tree which includes file entries. */
	FUNC3(iso9660->primary.rootent);
	for (i = 0; i < iso9660->primary.max_depth; i++)
		FUNC2(iso9660->primary.pathtbl[i].sorted);
	FUNC2(iso9660->primary.pathtbl);

	if (iso9660->opt.joliet) {
		FUNC3(iso9660->joliet.rootent);
		for (i = 0; i < iso9660->joliet.max_depth; i++)
			FUNC2(iso9660->joliet.pathtbl[i].sorted);
		FUNC2(iso9660->joliet.pathtbl);
	}

	/* Remove isofile entries. */
	FUNC4(iso9660);
	FUNC5(iso9660);

	FUNC0(&(iso9660->cur_dirstr));
	FUNC0(&(iso9660->volume_identifier));
	FUNC0(&(iso9660->publisher_identifier));
	FUNC0(&(iso9660->data_preparer_identifier));
	FUNC0(&(iso9660->application_identifier));
	FUNC0(&(iso9660->copyright_file_identifier));
	FUNC0(&(iso9660->abstract_file_identifier));
	FUNC0(&(iso9660->bibliographic_file_identifier));
	FUNC0(&(iso9660->el_torito.catalog_filename));
	FUNC0(&(iso9660->el_torito.boot_filename));
	FUNC0(&(iso9660->el_torito.id));
	FUNC0(&(iso9660->utf16be));
	FUNC0(&(iso9660->mbs));

	FUNC2(iso9660);
	a->format_data = NULL;

	return (ret);
}