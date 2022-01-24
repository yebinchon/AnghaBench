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
struct write_lzop {char compression_level; } ;
struct archive_write_filter {scalar_t__ data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(struct archive_write_filter *f, const char *key,
    const char *value)
{
	struct write_lzop *data = (struct write_lzop *)f->data;

	if (FUNC0(key, "compression-level") == 0) {
		if (value == NULL || !(value[0] >= '1' && value[0] <= '9') ||
		    value[1] != '\0')
			return (ARCHIVE_WARN);
		data->compression_level = value[0] - '0';
		return (ARCHIVE_OK);
	}
	/* Note: The "warn" return is just to inform the options
	 * supervisor that we didn't handle it.  It will generate
	 * a suitable error if no one used this option. */
	return (ARCHIVE_WARN);
}