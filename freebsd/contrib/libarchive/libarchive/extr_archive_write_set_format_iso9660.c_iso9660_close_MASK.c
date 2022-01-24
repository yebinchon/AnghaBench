#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int iso_level; scalar_t__ pad; scalar_t__ rr; scalar_t__ joliet; scalar_t__ boot; scalar_t__ boot_info_table; } ;
struct TYPE_11__ {int location_type_L_path_table; int location_type_M_path_table; int /*<<< orphan*/  vdd_type; scalar_t__ total_dir_block; scalar_t__ path_table_block; int /*<<< orphan*/  rootent; } ;
struct iso9660 {scalar_t__ birth_time; int location_rrip_er; int volume_space_size; int volume_sequence_number; TYPE_2__* directories_too_deep; TYPE_3__ opt; TYPE_4__ joliet; TYPE_4__ primary; scalar_t__ wbuff_tail; scalar_t__ wbuff_written; scalar_t__ wbuff_offset; int /*<<< orphan*/  wbuff_type; int /*<<< orphan*/  wbuff_remaining; scalar_t__ total_file_block; int /*<<< orphan*/ * sconv_from_utf16be; int /*<<< orphan*/ * sconv_to_utf16be; } ;
struct archive_write {int /*<<< orphan*/  archive; struct iso9660* format_data; } ;
struct TYPE_9__ {TYPE_1__* file; } ;
struct TYPE_8__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ BOOT_RECORD_DESCRIPTOR_BLOCK ; 
 int LOGICAL_BLOCK_SIZE ; 
 int NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK ; 
 int PADDING_BLOCK ; 
 int PRIMARY_VOLUME_DESCRIPTOR_BLOCK ; 
 scalar_t__ RRIP_ER_BLOCK ; 
 scalar_t__ SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK ; 
 int SYSTEM_AREA_BLOCK ; 
 int /*<<< orphan*/  VDD_ENHANCED ; 
 int /*<<< orphan*/  VDD_PRIMARY ; 
 int VOLUME_DESCRIPTOR_SET_TERMINATOR_BLOCK ; 
 int /*<<< orphan*/  WB_TO_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (struct archive_write*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct archive_write*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct archive_write*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct archive_write*) ; 
 int /*<<< orphan*/  FUNC8 (struct iso9660*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct iso9660*,int) ; 
 int FUNC10 (struct archive_write*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (struct archive_write*) ; 
 int FUNC14 (struct archive_write*) ; 
 int FUNC15 (struct archive_write*,TYPE_4__*) ; 
 int FUNC16 (struct archive_write*) ; 
 int FUNC17 (struct archive_write*) ; 
 int FUNC18 (struct archive_write*,TYPE_4__*) ; 
 int FUNC19 (struct archive_write*) ; 
 int FUNC20 (struct archive_write*) ; 
 int FUNC21 (struct archive_write*,int) ; 
 int FUNC22 (struct archive_write*,int,TYPE_4__*) ; 
 int FUNC23 (struct archive_write*) ; 
 int FUNC24 (struct archive_write*) ; 

__attribute__((used)) static int
FUNC25(struct archive_write *a)
{
	struct iso9660 *iso9660;
	int ret, blocks;

	iso9660 = a->format_data;

	/*
	 * Write remaining data out to the temporary file.
	 */
	if (FUNC13(a) > 0) {
		ret = FUNC14(a);
		if (ret < 0)
			return (ret);
	}

	/*
	 * Preparations...
	 */
#ifdef DEBUG
	if (iso9660->birth_time == 0)
#endif
		FUNC11(&(iso9660->birth_time));

	/*
	 * Prepare a bootable ISO image.
	 */
	if (iso9660->opt.boot) {
		/* Find out the boot file entry. */
		ret = FUNC6(a, iso9660->primary.rootent);
		if (ret < 0)
			return (ret);
		/* Reconvert the boot file from zisofs'ed form to
		 * plain form. */
		ret = FUNC24(a);
		if (ret < 0)
			return (ret);
		/* Write remaining data out to the temporary file. */
		if (FUNC13(a) > 0) {
			ret = FUNC14(a);
			if (ret < 0)
				return (ret);
		}
		/* Create the boot catalog. */
		ret = FUNC5(a, iso9660->primary.rootent);
		if (ret < 0)
			return (ret);
	}

	/*
	 * Prepare joliet extensions.
	 */
	if (iso9660->opt.joliet) {
		/* Make a new tree for joliet. */
		ret = FUNC4(a, &(iso9660->joliet.rootent),
		    iso9660->primary.rootent);
		if (ret < 0)
			return (ret);
		/* Make sure we have UTF-16BE converters.
		 * if there is no file entry, converters are still
		 * uninitialized. */
		if (iso9660->sconv_to_utf16be == NULL) {
			iso9660->sconv_to_utf16be =
			    FUNC3(
				&(a->archive), "UTF-16BE", 1);
			if (iso9660->sconv_to_utf16be == NULL)
				/* Couldn't allocate memory */
				return (ARCHIVE_FATAL);
			iso9660->sconv_from_utf16be =
			    FUNC2(
				&(a->archive), "UTF-16BE", 1);
			if (iso9660->sconv_from_utf16be == NULL)
				/* Couldn't allocate memory */
				return (ARCHIVE_FATAL);
		}
	}

	/*
	 * Make Path Tables.
	 */
	ret = FUNC7(a);
	if (ret < 0)
		return (ret);

	/*
	 * Calculate a total volume size and setup all locations of
	 * contents of an iso9660 image.
	 */
	blocks = SYSTEM_AREA_BLOCK
		+ PRIMARY_VOLUME_DESCRIPTOR_BLOCK
		+ VOLUME_DESCRIPTOR_SET_TERMINATOR_BLOCK
		+ NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK;
	if (iso9660->opt.boot)
		blocks += BOOT_RECORD_DESCRIPTOR_BLOCK;
	if (iso9660->opt.joliet)
		blocks += SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK;
	if (iso9660->opt.iso_level == 4)
		blocks += SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK;

	/* Setup the locations of Path Table. */
	iso9660->primary.location_type_L_path_table = blocks;
	blocks += iso9660->primary.path_table_block;
	iso9660->primary.location_type_M_path_table = blocks;
	blocks += iso9660->primary.path_table_block;
	if (iso9660->opt.joliet) {
		iso9660->joliet.location_type_L_path_table = blocks;
		blocks += iso9660->joliet.path_table_block;
		iso9660->joliet.location_type_M_path_table = blocks;
		blocks += iso9660->joliet.path_table_block;
	}

	/* Setup the locations of directories. */
	FUNC8(iso9660, blocks,
	    &(iso9660->primary));
	blocks += iso9660->primary.total_dir_block;
	if (iso9660->opt.joliet) {
		FUNC8(iso9660, blocks,
		    &(iso9660->joliet));
		blocks += iso9660->joliet.total_dir_block;
	}

	if (iso9660->opt.rr) {
		iso9660->location_rrip_er = blocks;
		blocks += RRIP_ER_BLOCK;
	}

	/* Setup the locations of all file contents. */
 	FUNC9(iso9660, blocks);
	blocks += iso9660->total_file_block;
	if (iso9660->opt.boot && iso9660->opt.boot_info_table) {
		ret = FUNC10(a);
		if (ret < 0)
			return (ret);
	}

	/* Now we have a total volume size. */
	iso9660->volume_space_size = blocks;
	if (iso9660->opt.pad)
		iso9660->volume_space_size += PADDING_BLOCK;
	iso9660->volume_sequence_number = 1;


	/*
	 * Write an ISO 9660 image.
	 */

	/* Switch to start using wbuff as file buffer. */
	iso9660->wbuff_remaining = FUNC12();
	iso9660->wbuff_type = WB_TO_STREAM;
	iso9660->wbuff_offset = 0;
	iso9660->wbuff_written = 0;
	iso9660->wbuff_tail = 0;

	/* Write The System Area */
	ret = FUNC21(a, SYSTEM_AREA_BLOCK * LOGICAL_BLOCK_SIZE);
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Write Primary Volume Descriptor */
	ret = FUNC15(a, &(iso9660->primary));
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	if (iso9660->opt.boot) {
		/* Write Boot Record Volume Descriptor */
		ret = FUNC16(a);
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	if (iso9660->opt.iso_level == 4) {
		/* Write Enhanced Volume Descriptor */
		iso9660->primary.vdd_type = VDD_ENHANCED;
		ret = FUNC15(a, &(iso9660->primary));
		iso9660->primary.vdd_type = VDD_PRIMARY;
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	if (iso9660->opt.joliet) {
		ret = FUNC15(a, &(iso9660->joliet));
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	/* Write Volume Descriptor Set Terminator */
	ret = FUNC17(a);
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Write Non-ISO File System Information */
	ret = FUNC20(a);
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Write Type L Path Table */
	ret = FUNC22(a, 0, &(iso9660->primary));
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Write Type M Path Table */
	ret = FUNC22(a, 1, &(iso9660->primary));
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	if (iso9660->opt.joliet) {
		/* Write Type L Path Table */
		ret = FUNC22(a, 0, &(iso9660->joliet));
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);

		/* Write Type M Path Table */
		ret = FUNC22(a, 1, &(iso9660->joliet));
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	/* Write Directory Descriptors */
	ret = FUNC18(a, &(iso9660->primary));
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	if (iso9660->opt.joliet) {
		ret = FUNC18(a, &(iso9660->joliet));
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	if (iso9660->opt.rr) {
		/* Write Rockridge ER(Extensions Reference) */
		ret = FUNC23(a);
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	/* Write File Descriptors */
	ret = FUNC19(a);
	if (ret != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	/* Write Padding  */
	if (iso9660->opt.pad) {
		ret = FUNC21(a, PADDING_BLOCK * LOGICAL_BLOCK_SIZE);
		if (ret != ARCHIVE_OK)
			return (ARCHIVE_FATAL);
	}

	if (iso9660->directories_too_deep != NULL) {
		FUNC1(&a->archive, ARCHIVE_ERRNO_MISC,
		    "%s: Directories too deep.",
		    FUNC0(
			iso9660->directories_too_deep->file->entry));
		return (ARCHIVE_WARN);
	}

	/* Write remaining data out. */
	ret = FUNC14(a);

	return (ret);
}