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
struct file {scalar_t__ size; int flg; scalar_t__ dir; scalar_t__ name_len; } ;
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct archive_rb_node {int dummy; } ;
struct archive_entry {int dummy; } ;
struct _7zip {scalar_t__ entry_bytes_remaining; int total_number_entry; int total_number_empty_entry; scalar_t__ entry_crc32; struct file* cur_file; int /*<<< orphan*/  opt_compression_level; int /*<<< orphan*/  opt_compression; int /*<<< orphan*/  total_number_dir_entry; int /*<<< orphan*/  total_bytes_entry_name; int /*<<< orphan*/ * total_number_time_defined; int /*<<< orphan*/  rbtree; int /*<<< orphan*/ * sconv; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ AE_IFLNK ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ARCHIVE_Z_RUN ; 
 size_t ATIME ; 
 int ATIME_IS_SET ; 
 size_t CTIME ; 
 int CTIME_IS_SET ; 
 size_t MTIME ; 
 int MTIME_IS_SET ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct archive_rb_node*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (struct archive_write*,void const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int FUNC8 (struct archive_write*,struct archive_entry*,struct file**) ; 
 int /*<<< orphan*/  FUNC9 (struct _7zip*,struct file*) ; 
 int /*<<< orphan*/  FUNC10 (struct _7zip*,struct file*) ; 

__attribute__((used)) static int
FUNC11(struct archive_write *a, struct archive_entry *entry)
{
	struct _7zip *zip;
	struct file *file;
	int r;

	zip = (struct _7zip *)a->format_data;
	zip->cur_file = NULL;
	zip->entry_bytes_remaining = 0;

	if (zip->sconv == NULL) {
		zip->sconv = FUNC4(
		    &a->archive, "UTF-16LE", 1);
		if (zip->sconv == NULL)
			return (ARCHIVE_FATAL);
	}

	r = FUNC8(a, entry, &file);
	if (r < ARCHIVE_WARN) {
		if (file != NULL)
			FUNC7(file);
		return (r);
	}
	if (file->size == 0 && file->dir) {
		if (!FUNC1(&(zip->rbtree),
		    (struct archive_rb_node *)file)) {
			/* We have already had the same file. */
			FUNC7(file);
			return (ARCHIVE_OK);
		}
	}

	if (file->flg & MTIME_IS_SET)
		zip->total_number_time_defined[MTIME]++;
	if (file->flg & CTIME_IS_SET)
		zip->total_number_time_defined[CTIME]++;
	if (file->flg & ATIME_IS_SET)
		zip->total_number_time_defined[ATIME]++;

	zip->total_number_entry++;
	zip->total_bytes_entry_name += file->name_len + 2;
	if (file->size == 0) {
		/* Count up the number of empty files. */
		zip->total_number_empty_entry++;
		if (file->dir)
			zip->total_number_dir_entry++;
		else
			FUNC10(zip, file);
		return (r);
	}

	/*
	 * Init compression.
	 */
	if ((zip->total_number_entry - zip->total_number_empty_entry) == 1) {
		r = FUNC0(a, zip->opt_compression,
			zip->opt_compression_level);
		if (r < 0) {
			FUNC7(file);
			return (ARCHIVE_FATAL);
		}
	}

	/* Register a non-empty file. */
	FUNC9(zip, file);

	/*
	 * Set the current file to cur_file to read its contents.
	 */
	zip->cur_file = file;


	/* Save a offset of current file in temporary file. */
	zip->entry_bytes_remaining = file->size;
	zip->entry_crc32 = 0;

	/*
	 * Store a symbolic link name as file contents.
	 */
	if (FUNC2(entry) == AE_IFLNK) {
		ssize_t bytes;
		const void *p = (const void *)FUNC3(entry);
		bytes = FUNC5(a, p, (size_t)file->size, ARCHIVE_Z_RUN);
		if (bytes < 0)
			return ((int)bytes);
		zip->entry_crc32 = FUNC6(zip->entry_crc32, p, (unsigned)bytes);
		zip->entry_bytes_remaining -= bytes;
	}

	return (r);
}