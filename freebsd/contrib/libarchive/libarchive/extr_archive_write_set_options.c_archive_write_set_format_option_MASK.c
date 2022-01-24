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
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_WRITE_MAGIC ; 
 int FUNC0 (struct archive*,char const*,char const*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  archive_set_format_option ; 

int
FUNC1(struct archive *a, const char *m, const char *o,
    const char *v)
{
	return FUNC0(a, m, o, v,
	    ARCHIVE_WRITE_MAGIC, "archive_write_set_format_option",
	    archive_set_format_option);
}