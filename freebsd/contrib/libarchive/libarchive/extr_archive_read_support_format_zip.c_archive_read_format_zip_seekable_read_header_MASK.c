#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ s; } ;
struct zip_entry {scalar_t__ local_header_offset; TYPE_2__ rsrcname; int /*<<< orphan*/  node; } ;
struct zip {scalar_t__ has_encrypted_entries; scalar_t__ unconsumed; struct zip_entry* entry; scalar_t__ hctx_valid; scalar_t__ cctx_valid; scalar_t__ tctx_valid; int /*<<< orphan*/  hctx; int /*<<< orphan*/  cctx; int /*<<< orphan*/  tree_rsrc; int /*<<< orphan*/  tree; int /*<<< orphan*/ * zip_entries; } ;
struct TYPE_6__ {char* archive_format_name; int /*<<< orphan*/  archive_format; } ;
struct archive_read {TYPE_3__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_ZIP ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_RB_DIR_RIGHT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_read*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_read*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_read*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct archive_read*,struct archive_entry*,struct zip*) ; 
 int FUNC10 (struct archive_read*,struct archive_entry*,struct zip*) ; 
 int FUNC11 (struct archive_read*,struct archive_entry*,struct zip_entry*) ; 

__attribute__((used)) static int
FUNC12(struct archive_read *a,
	struct archive_entry *entry)
{
	struct zip *zip = (struct zip *)a->format->data;
	struct zip_entry *rsrc;
	int64_t offset;
	int r, ret = ARCHIVE_OK;

	/*
	 * It should be sufficient to call archive_read_next_header() for
	 * a reader to determine if an entry is encrypted or not. If the
	 * encryption of an entry is only detectable when calling
	 * archive_read_data(), so be it. We'll do the same check there
	 * as well.
	 */
	if (zip->has_encrypted_entries ==
			ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW)
		zip->has_encrypted_entries = 0;

	a->archive.archive_format = ARCHIVE_FORMAT_ZIP;
	if (a->archive.archive_format_name == NULL)
		a->archive.archive_format_name = "ZIP";

	if (zip->zip_entries == NULL) {
		r = FUNC9(a, entry, zip);
		if (r != ARCHIVE_OK)
			return r;
		/* Get first entry whose local header offset is lower than
		 * other entries in the archive file. */
		zip->entry =
		    (struct zip_entry *)FUNC0(&zip->tree);
	} else if (zip->entry != NULL) {
		/* Get next entry in local header offset order. */
		zip->entry = (struct zip_entry *)FUNC2(
		    &zip->tree, &zip->entry->node, ARCHIVE_RB_DIR_RIGHT);
	}

	if (zip->entry == NULL)
		return ARCHIVE_EOF;

	if (zip->entry->rsrcname.s)
		rsrc = (struct zip_entry *)FUNC1(
		    &zip->tree_rsrc, zip->entry->rsrcname.s);
	else
		rsrc = NULL;

	if (zip->cctx_valid)
		FUNC6(&zip->cctx);
	if (zip->hctx_valid)
		FUNC8(&zip->hctx);
	zip->tctx_valid = zip->cctx_valid = zip->hctx_valid = 0;
	FUNC4(a);

	/* File entries are sorted by the header offset, we should mostly
	 * use __archive_read_consume to advance a read point to avoid
	 * redundant data reading.  */
	offset = FUNC7(&a->archive, 0);
	if (offset < zip->entry->local_header_offset)
		FUNC3(a,
		    zip->entry->local_header_offset - offset);
	else if (offset != zip->entry->local_header_offset) {
		FUNC5(a, zip->entry->local_header_offset,
		    SEEK_SET);
	}
	zip->unconsumed = 0;
	r = FUNC10(a, entry, zip);
	if (r != ARCHIVE_OK)
		return r;
	if (rsrc) {
		int ret2 = FUNC11(a, entry, rsrc);
		if (ret2 < ret)
			ret = ret2;
	}
	return (ret);
}