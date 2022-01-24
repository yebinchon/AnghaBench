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
struct blocks {size_t max; size_t data; int* flags; TYPE_1__* slots; } ;
typedef  size_t apr_uint32_t ;
struct TYPE_2__ {scalar_t__ pos; size_t adlersum; } ;

/* Variables and functions */
 int /*<<< orphan*/  MATCH_BLOCKSIZE ; 
 scalar_t__ NO_POSITION ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct blocks *blocks, apr_uint32_t adlersum, apr_uint32_t pos)
{
  apr_uint32_t h = FUNC1(adlersum) & blocks->max;

  /* This will terminate, since we know that we will not fill the table. */
  for (; blocks->slots[h].pos != NO_POSITION; h = (h + 1) & blocks->max)
    if (blocks->slots[h].adlersum == adlersum)
      if (FUNC2(blocks->data + blocks->slots[h].pos, blocks->data + pos,
                 MATCH_BLOCKSIZE) == 0)
        return;

  blocks->slots[h].adlersum = adlersum;
  blocks->slots[h].pos = pos;
  blocks->flags[FUNC0(adlersum)] |= 1 << (adlersum & 7);
}