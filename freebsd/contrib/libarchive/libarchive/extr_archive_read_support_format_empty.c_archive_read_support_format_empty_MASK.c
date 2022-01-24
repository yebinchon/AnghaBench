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
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int FUNC0 (struct archive_read*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  archive_read_format_empty_bid ; 
 int /*<<< orphan*/  archive_read_format_empty_read_data ; 
 int /*<<< orphan*/  archive_read_format_empty_read_header ; 

int
FUNC2(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	int r;

	FUNC1(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_format_empty");

	r = FUNC0(a,
	    NULL,
	    NULL,
	    archive_read_format_empty_bid,
	    NULL,
	    archive_read_format_empty_read_header,
	    archive_read_format_empty_read_data,
	    NULL,
	    NULL,
	    NULL,
	    NULL,
	    NULL);

	return (r);
}