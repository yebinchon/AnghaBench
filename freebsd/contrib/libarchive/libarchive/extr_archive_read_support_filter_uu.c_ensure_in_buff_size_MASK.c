#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uudecode {size_t in_allocated; unsigned char* in_buff; int /*<<< orphan*/  in_cnt; } ;
struct archive_read_filter {TYPE_1__* archive; } ;
struct TYPE_2__ {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int IN_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct archive_read_filter *self,
    struct uudecode *uudecode, size_t size)
{

	if (size > uudecode->in_allocated) {
		unsigned char *ptr;
		size_t newsize;

		/*
		 * Calculate a new buffer size for in_buff.
		 * Increase its value until it has enough size we need.
		 */
		newsize = uudecode->in_allocated;
		do {
			if (newsize < IN_BUFF_SIZE*32)
				newsize <<= 1;
			else
				newsize += IN_BUFF_SIZE;
		} while (size > newsize);
		/* Allocate the new buffer. */
		ptr = FUNC2(newsize);
		if (ptr == NULL) {
			FUNC1(ptr);
			FUNC0(&self->archive->archive,
			    ENOMEM,
    			    "Can't allocate data for uudecode");
			return (ARCHIVE_FATAL);
		}
		/* Move the remaining data in in_buff into the new buffer. */
		if (uudecode->in_cnt)
			FUNC3(ptr, uudecode->in_buff, uudecode->in_cnt);
		/* Replace in_buff with the new buffer. */
		FUNC1(uudecode->in_buff);
		uudecode->in_buff = ptr;
		uudecode->in_allocated = newsize;
	}
	return (ARCHIVE_OK);
}