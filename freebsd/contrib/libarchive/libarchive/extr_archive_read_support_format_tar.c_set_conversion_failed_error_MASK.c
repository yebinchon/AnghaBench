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
struct archive_string_conv {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_WARN ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string_conv*) ; 
 scalar_t__ errno ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a,
    struct archive_string_conv *sconv, const char *name)
{
	if (errno == ENOMEM) {
		FUNC0(&a->archive, ENOMEM,
		    "Can't allocate memory for %s", name);
		return (ARCHIVE_FATAL);
	}
	FUNC0(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
	    "%s can't be converted from %s to current locale.",
	    name, FUNC1(sconv));
	return (ARCHIVE_WARN);
}