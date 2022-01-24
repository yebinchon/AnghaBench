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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_1__* umb; int /*<<< orphan*/  src_relpath; int /*<<< orphan*/  dst_relpath; scalar_t__ shadowed; struct TYPE_6__* pb; void* skip; void* edited; } ;
typedef  TYPE_2__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  src_op_depth; int /*<<< orphan*/  wcroot; int /*<<< orphan*/  dst_op_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_edit ; 

__attribute__((used)) static svn_error_t *
FUNC3(node_move_baton_t *nmb,
                 apr_pool_t *scratch_pool)
{
  if (nmb->edited)
    return SVN_NO_ERROR;

  if (nmb->pb)
    {
      FUNC0(FUNC3(nmb->pb, scratch_pool));

      if (nmb->pb->skip)
        nmb->skip = TRUE;
    }

  nmb->edited = TRUE;

  if (nmb->skip)
    return SVN_NO_ERROR;

  if (nmb->shadowed && !(nmb->pb && nmb->pb->shadowed))
    {
      svn_node_kind_t dst_kind, src_kind;

      FUNC0(FUNC2(NULL, &dst_kind, NULL,
                                        NULL, NULL, NULL, NULL,
                                        NULL, NULL, NULL, NULL, NULL, NULL,
                                        nmb->umb->wcroot, nmb->dst_relpath,
                                        nmb->umb->dst_op_depth,
                                        scratch_pool, scratch_pool));

      FUNC0(FUNC2(NULL, &src_kind, NULL, NULL,
                                        NULL, NULL, NULL,
                                        NULL, NULL, NULL, NULL, NULL, NULL,
                                        nmb->umb->wcroot, nmb->src_relpath,
                                        nmb->umb->src_op_depth,
                                        scratch_pool, scratch_pool));

      FUNC0(FUNC1(nmb,
                                 dst_kind, src_kind,
                                 svn_wc_conflict_action_edit,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}