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
struct collection_list {size_t next_memrange; int listsize; TYPE_1__* list; } ;
typedef  void* bfd_signed_vma ;
struct TYPE_3__ {int type; void* end; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct collection_list*,int) ; 
 scalar_t__ info_verbose ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4 (struct collection_list *memranges, int type, bfd_signed_vma base,
	      unsigned long len)
{
  if (info_verbose)
    {
      FUNC1 ("(%d,", type);
      FUNC2 (base);
      FUNC1 (",%ld)\n", len);
    }

  /* type: 0 == memory, n == basereg */
  memranges->list[memranges->next_memrange].type = type;
  /* base: addr if memory, offset if reg relative. */
  memranges->list[memranges->next_memrange].start = base;
  /* len: we actually save end (base + len) for convenience */
  memranges->list[memranges->next_memrange].end = base + len;
  memranges->next_memrange++;
  if (memranges->next_memrange >= memranges->listsize)
    {
      memranges->listsize *= 2;
      memranges->list = FUNC3 (memranges->list,
				  memranges->listsize);
    }

  if (type != -1)		/* better collect the base register! */
    FUNC0 (memranges, type);
}