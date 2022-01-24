#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ checks; int /*<<< orphan*/  prealloc; scalar_t__ index_list_size; scalar_t__ record_count; scalar_t__ total_size; scalar_t__ uncompressed_size; int /*<<< orphan*/  streams; } ;
typedef  TYPE_1__ lzma_index ;
typedef  int /*<<< orphan*/  lzma_allocator ;

/* Variables and functions */
 int /*<<< orphan*/  INDEX_GROUP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static lzma_index *
FUNC2(const lzma_allocator *allocator)
{
	lzma_index *i = FUNC1(sizeof(lzma_index), allocator);
	if (i != NULL) {
		FUNC0(&i->streams);
		i->uncompressed_size = 0;
		i->total_size = 0;
		i->record_count = 0;
		i->index_list_size = 0;
		i->prealloc = INDEX_GROUP_SIZE;
		i->checks = 0;
	}

	return i;
}