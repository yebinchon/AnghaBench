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
struct archive_read_filter {char* name; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_FILTER_ZSTD ; 
 int FUNC0 (struct archive_read_filter*,char*) ; 

__attribute__((used)) static int
FUNC1(struct archive_read_filter *self)
{
	int r;

	r = FUNC0(self, "zstd -d -qq");
	/* Note: We set the format here even if __archive_read_program()
	 * above fails.  We do, after all, know what the format is
	 * even if we weren't able to read it. */
	self->code = ARCHIVE_FILTER_ZSTD;
	self->name = "zstd";
	return (r);
}