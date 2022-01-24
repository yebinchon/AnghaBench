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
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  int /*<<< orphan*/  Void_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/ * ATFORK_ARENA_PTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arena_key ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(Void_t* mem, const Void_t *caller)
{
  Void_t *vptr = NULL;
  mstate ar_ptr;
  mchunkptr p;                          /* chunk corresponding to mem */

  if (mem == 0)                              /* free(0) has no effect */
    return;

  p = FUNC3(mem);         /* do not bother to replicate free_check here */

#if HAVE_MMAP
  if (chunk_is_mmapped(p))                       /* release mmapped memory. */
  {
    munmap_chunk(p);
    return;
  }
#endif

  ar_ptr = FUNC1(p);
  FUNC7(arena_key, vptr);
  if(vptr != ATFORK_ARENA_PTR)
    (void)FUNC5(&ar_ptr->mutex);
  FUNC0(ar_ptr, mem);
  if(vptr != ATFORK_ARENA_PTR)
    (void)FUNC6(&ar_ptr->mutex);
}