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
struct archive_string {char const* s; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 char* FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_string*,char*,size_t) ; 
 scalar_t__ FUNC7 (struct archive_read*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_read*,size_t*,size_t*) ; 

__attribute__((used)) static int FUNC9(struct archive_read* a,
    struct archive_entry* e, ssize_t* extra_data_size)
{
	size_t flags = 0;
	size_t version = 0;
	size_t value_len = 0;
	struct archive_string version_string;
	struct archive_string name_utf8_string;

	/* Flags are ignored. */
	if(!FUNC8(a, &flags, &value_len))
		return ARCHIVE_EOF;

	*extra_data_size -= value_len;
	if(ARCHIVE_OK != FUNC7(a, value_len))
		return ARCHIVE_EOF;

	if(!FUNC8(a, &version, &value_len))
		return ARCHIVE_EOF;

	*extra_data_size -= value_len;
	if(ARCHIVE_OK != FUNC7(a, value_len))
		return ARCHIVE_EOF;

	/* extra_data_size should be zero here. */

	const char* cur_filename = FUNC0(e);
	if(cur_filename == NULL) {
		FUNC2(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
		    "Version entry without file name");
		return ARCHIVE_FATAL;
	}

	FUNC5(&version_string);
	FUNC5(&name_utf8_string);

	/* Prepare a ;123 suffix for the filename, where '123' is the version
	 * value of this file. */
	FUNC6(&version_string, ";%zu", version);

	/* Build the new filename. */
	FUNC3(&name_utf8_string, cur_filename);
	FUNC3(&name_utf8_string, version_string.s);

	/* Apply the new filename into this file's context. */
	FUNC1(e, name_utf8_string.s);

	/* Free buffers. */
	FUNC4(&version_string);
	FUNC4(&name_utf8_string);
	return ARCHIVE_OK;
}