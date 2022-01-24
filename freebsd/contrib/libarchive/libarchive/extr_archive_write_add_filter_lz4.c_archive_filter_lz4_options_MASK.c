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
struct private_data {int compression_level; char block_maximum_size; int /*<<< orphan*/  block_independence; int /*<<< orphan*/  block_checksum; int /*<<< orphan*/  stream_checksum; } ;
struct archive_write_filter {int /*<<< orphan*/  archive; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(struct archive_write_filter *f,
    const char *key, const char *value)
{
	struct private_data *data = (struct private_data *)f->data;

	if (FUNC1(key, "compression-level") == 0) {
		int val;
		if (value == NULL || !((val = value[0] - '0') >= 1 && val <= 9) ||
		    value[1] != '\0')
			return (ARCHIVE_WARN);

#ifndef HAVE_LZ4HC_H
		if(val >= 3)
		{
			FUNC0(f->archive, ARCHIVE_ERRNO_PROGRAMMER,
				"High compression not included in this build");
			return (ARCHIVE_FATAL);
		}
#endif
		data->compression_level = val;
		return (ARCHIVE_OK);
	}
	if (FUNC1(key, "stream-checksum") == 0) {
		data->stream_checksum = value != NULL;
		return (ARCHIVE_OK);
	}
	if (FUNC1(key, "block-checksum") == 0) {
		data->block_checksum = value != NULL;
		return (ARCHIVE_OK);
	}
	if (FUNC1(key, "block-size") == 0) {
		if (value == NULL || !(value[0] >= '4' && value[0] <= '7') ||
		    value[1] != '\0')
			return (ARCHIVE_WARN);
		data->block_maximum_size = value[0] - '0';
		return (ARCHIVE_OK);
	}
	if (FUNC1(key, "block-dependence") == 0) {
		data->block_independence = value == NULL;
		return (ARCHIVE_OK);
	}

	/* Note: The "warn" return is just to inform the options
	 * supervisor that we didn't handle it.  It will generate
	 * a suitable error if no one used this option. */
	return (ARCHIVE_WARN);
}