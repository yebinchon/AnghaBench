#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* elements; } ;
typedef  TYPE_2__ svn_priority_queue__t ;
struct TYPE_5__ {int nelts; int elt_size; scalar_t__ elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 

void
FUNC2(svn_priority_queue__t *queue)
{
  if (queue->elements->nelts)
    {
      FUNC1(queue->elements->elts,
              queue->elements->elts
              + (queue->elements->nelts - 1) * queue->elements->elt_size,
              queue->elements->elt_size);
      --queue->elements->nelts;
      FUNC0(queue, 0);
    }
}