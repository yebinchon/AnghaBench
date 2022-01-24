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
struct warc_s {unsigned int omit_warcinfo; } ;
struct archive_write {struct warc_s* format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(struct archive_write *a, const char *key, const char *val)
{
	struct warc_s *w = a->format_data;

	if (FUNC0(key, "omit-warcinfo") == 0) {
		if (val == NULL || FUNC0(val, "true") == 0) {
			/* great */
			w->omit_warcinfo = 1U;
			return (ARCHIVE_OK);
		}
	}

	/* Note: The "warn" return is just to inform the options
	 * supervisor that we didn't handle it.  It will generate
	 * a suitable error if no one used this option. */
	return (ARCHIVE_WARN);
}