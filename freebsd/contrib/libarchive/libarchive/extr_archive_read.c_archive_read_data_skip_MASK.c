#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct archive_read {TYPE_2__ archive; TYPE_1__* format; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int (* read_data_skip ) (struct archive_read*) ;} ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_DATA ; 
 int /*<<< orphan*/  ARCHIVE_STATE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct archive_read*) ; 

int
FUNC3(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	int r;
	const void *buff;
	size_t size;
	int64_t offset;

	FUNC0(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_DATA,
	    "archive_read_data_skip");

	if (a->format->read_data_skip != NULL)
		r = (a->format->read_data_skip)(a);
	else {
		while ((r = FUNC1(&a->archive,
			    &buff, &size, &offset))
		    == ARCHIVE_OK)
			;
	}

	if (r == ARCHIVE_EOF)
		r = ARCHIVE_OK;

	a->archive.state = ARCHIVE_STATE_HEADER;
	return (r);
}