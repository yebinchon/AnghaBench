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
struct fileblocks {size_t filesize; struct fileblock* last; struct fileblock* first; } ;
struct fileblock {int size; struct fileblock* next; scalar_t__ buff; int /*<<< orphan*/  gap_size; } ;
struct archive {int dummy; } ;
typedef  long ssize_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct fileblock*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nulldata ; 
 int nullsize ; 

__attribute__((used)) static ssize_t
FUNC3(struct archive *a, void *_private, const void *buff, size_t size)
{
	struct fileblocks *private = _private;
	struct fileblock *block;

	(void)a;

	if ((const char *)nulldata <= (const char *)buff
	    && (const char *)buff < (const char *)nulldata + nullsize) {
		/* We don't need to store a block of gap data. */
		private->last->gap_size += (int64_t)size;
	} else {
		/* Yes, we're assuming the very first write is metadata. */
		/* It's header or metadata, copy and save it. */
		block = (struct fileblock *)FUNC0(sizeof(*block));
		FUNC2(block, 0, sizeof(*block));
		block->size = (int)size;
		block->buff = FUNC0(size);
		FUNC1(block->buff, buff, size);
		if (private->last == NULL) {
			private->first = private->last = block;
		} else {
			private->last->next = block;
			private->last = block;
		}
		block->next = NULL;
	}
	private->filesize += size;
	return ((long)size);
}