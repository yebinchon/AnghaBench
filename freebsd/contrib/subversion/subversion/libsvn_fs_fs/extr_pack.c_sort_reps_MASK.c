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
typedef  int /*<<< orphan*/  path_order_t ;
struct TYPE_5__ {TYPE_2__* path_order; int /*<<< orphan*/  info_pool; TYPE_2__* references; } ;
typedef  TYPE_1__ pack_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {scalar_t__ nelts; scalar_t__ elts; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ compare_path_order ; 
 scalar_t__ compare_references ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int (*) (void const*,void const*)) ; 

__attribute__((used)) static void
FUNC7(pack_context_t *context)
{
  apr_pool_t *temp_pool;
  path_order_t **temp, **path_order;
  int i, count;

  /* We will later assume that there is at least one node / path.
   */
  if (context->path_order->nelts == 0)
    {
      FUNC1(context->references->nelts == 0);
      return;
    }

  /* Sort containers by path and IDs, respectively.
   */
  FUNC6(context->path_order,
                  (int (*)(const void *, const void *))compare_path_order);
  FUNC6(context->references,
                  (int (*)(const void *, const void *))compare_references);

  /* Directories are already in front; sort directories section and files
   * section separately but use the same heuristics (see sub-function).
   */
  temp_pool = FUNC4(context->info_pool);
  count = context->path_order->nelts;
  temp = FUNC0(temp_pool, count * sizeof(*temp));
  path_order = (void *)context->path_order->elts;

  /* Mark nodes depending on what other nodes exist for the same path etc. */
  FUNC2(path_order, count);

  /* Rearrange those sub-sections separately. */
  FUNC3(context, path_order, temp, 0, count);

  /* We now know the final ordering. */
  for (i = 0; i < count; ++i)
    path_order[i] = temp[i];

  FUNC5(temp_pool);
}