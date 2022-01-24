#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  int /*<<< orphan*/  Void_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  stat_lock_wait; int /*<<< orphan*/  stat_lock_direct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(Void_t* mem)
{
  mstate ar_ptr;
  mchunkptr p;                          /* chunk corresponding to mem */

  FUNC3("cvmx_free(%p)\n", mem);


  if (mem == 0)                              /* free(0) has no effect */
    return;

  p = FUNC4(mem);


  ar_ptr = FUNC1(p);
  FUNC2(ar_ptr);
#if THREAD_STATS
  if(!mutex_trylock(&ar_ptr->mutex))
    ++(ar_ptr->stat_lock_direct);
  else {
    (void)mutex_lock(&ar_ptr->mutex);
    ++(ar_ptr->stat_lock_wait);
  }
#else
  (void)FUNC5(&ar_ptr->mutex);
#endif
  FUNC0(ar_ptr, mem);
  (void)FUNC7(&ar_ptr->mutex);
}