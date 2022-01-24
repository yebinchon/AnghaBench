#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* elements; } ;
typedef  TYPE_2__ svn_priority_queue__t ;
struct TYPE_6__ {int nelts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 

__attribute__((used)) static void
FUNC2(svn_priority_queue__t *queue,
               int idx)
{
  while (2 * idx + 2 < queue->elements->nelts)
    {
      int child = FUNC0(queue, 2 * idx + 1, 2 * idx + 2)
                ? 2 * idx + 1
                : 2 * idx + 2;

      if (FUNC0(queue, idx, child))
        return;

      FUNC1(queue, idx, child);
      idx = child;
    }

  if (   2 * idx + 1 < queue->elements->nelts
      && FUNC0(queue, 2 * idx + 1, idx))
    FUNC1(queue, 2 * idx + 1, idx);
}