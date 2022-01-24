#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* branch_id; } ;
struct TYPE_9__ {scalar_t__ kind; void* target; scalar_t__ text; scalar_t__ props; TYPE_1__ branch_ref; } ;
typedef  TYPE_2__ svn_element__payload_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_element__payload_t *
FUNC6(const svn_element__payload_t *old,
                         apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload;

  FUNC2(! old || FUNC3(old));

  if (old == NULL)
    return NULL;

  new_payload = FUNC0(result_pool, old, sizeof(*new_payload));
  if (old->branch_ref.branch_id)
    new_payload->branch_ref.branch_id
      = FUNC1(result_pool, old->branch_ref.branch_id);
  if (old->props)
    new_payload->props = FUNC4(old->props, result_pool);
  if (old->kind == svn_node_file && old->text)
    new_payload->text = FUNC5(old->text, result_pool);
  if (old->kind == svn_node_symlink && old->target)
    new_payload->target = FUNC1(result_pool, old->target);
  return new_payload;
}