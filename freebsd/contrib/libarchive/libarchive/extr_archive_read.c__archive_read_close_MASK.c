#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ state; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int ARCHIVE_STATE_ANY ; 
 scalar_t__ ARCHIVE_STATE_CLOSED ; 
 int ARCHIVE_STATE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct archive_read*) ; 

__attribute__((used)) static int
FUNC3(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	int r = ARCHIVE_OK, r1 = ARCHIVE_OK;

	FUNC0(&a->archive, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_ANY | ARCHIVE_STATE_FATAL, "archive_read_close");
	if (a->archive.state == ARCHIVE_STATE_CLOSED)
		return (ARCHIVE_OK);
	FUNC1(&a->archive);
	a->archive.state = ARCHIVE_STATE_CLOSED;

	/* TODO: Clean up the formatters. */

	/* Release the filter objects. */
	r1 = FUNC2(a);
	if (r1 < r)
		r = r1;

	return (r);
}