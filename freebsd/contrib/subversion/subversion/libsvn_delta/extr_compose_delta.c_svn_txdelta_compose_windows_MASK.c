#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int num_ops; int /*<<< orphan*/  tview_len; int /*<<< orphan*/  sview_len; int /*<<< orphan*/  sview_offset; TYPE_1__* new_data; TYPE_3__* ops; } ;
typedef  TYPE_2__ svn_txdelta_window_t ;
struct TYPE_19__ {scalar_t__ action_code; int offset; scalar_t__ length; } ;
typedef  TYPE_3__ svn_txdelta_op_t ;
struct TYPE_20__ {int /*<<< orphan*/  new_data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ svn_txdelta__ops_baton_t ;
struct TYPE_21__ {scalar_t__ kind; int target_offset; scalar_t__ limit; scalar_t__ offset; struct TYPE_21__* next; } ;
typedef  TYPE_5__ range_list_node_t ;
typedef  int /*<<< orphan*/  range_index_t ;
typedef  int /*<<< orphan*/  offset_index_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_17__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__* FUNC1 (scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const,scalar_t__ const,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ range_from_target ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__ const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,scalar_t__,int,scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_txdelta_new ; 
 scalar_t__ svn_txdelta_source ; 
 scalar_t__ svn_txdelta_target ; 

svn_txdelta_window_t *
FUNC13(const svn_txdelta_window_t *window_A,
                            const svn_txdelta_window_t *window_B,
                            apr_pool_t *pool)
{
  svn_txdelta__ops_baton_t build_baton = { 0 };
  svn_txdelta_window_t *composite;
  apr_pool_t *subpool = FUNC8(pool);
  offset_index_t *offset_index = FUNC3(window_A, subpool);
  range_index_t *range_index = FUNC4(subpool);
  apr_size_t target_offset = 0;
  int i;

  /* Read the description of the delta composition algorithm in
     notes/fs-improvements.txt before going any further.
     You have been warned. */
  build_baton.new_data = FUNC10(pool);
  for (i = 0; i < window_B->num_ops; ++i)
    {
      const svn_txdelta_op_t *const op = &window_B->ops[i];
      if (op->action_code != svn_txdelta_source)
        {
          /* Delta ops that don't depend on the source can be copied
             to the composite unchanged. */
          const char *const new_data =
            (op->action_code == svn_txdelta_new
             ? window_B->new_data->data + op->offset
             : NULL);
          FUNC11(&build_baton, op->action_code,
                                 op->offset, op->length,
                                 new_data, pool);
        }
      else
        {
          /* NOTE: Remember that `offset' and `limit' refer to
             positions in window_B's _source_ stream, which is the
             same as window_A's _target_ stream! */
          const apr_size_t offset = op->offset;
          const apr_size_t limit = op->offset + op->length;
          range_list_node_t *range_list, *range;
          apr_size_t tgt_off = target_offset;

          FUNC7(offset, range_index);
          range_list = FUNC1(offset, limit, range_index);

          for (range = range_list; range; range = range->next)
            {
              if (range->kind == range_from_target)
                FUNC11(&build_baton, svn_txdelta_target,
                                       range->target_offset,
                                       range->limit - range->offset,
                                       NULL, pool);
              else
                FUNC2(range->offset, range->limit, tgt_off, 0,
                                &build_baton, window_A, offset_index,
                                pool);

              tgt_off += range->limit - range->offset;
            }
          FUNC0(tgt_off == target_offset + op->length);

          FUNC5(range_list, range_index);
          FUNC6(offset, limit, target_offset, range_index);
        }

      /* Remember the new offset in the would-be target stream. */
      target_offset += op->length;
    }

  FUNC9(subpool);

  composite = FUNC12(&build_baton, pool);
  composite->sview_offset = window_A->sview_offset;
  composite->sview_len = window_A->sview_len;
  composite->tview_len = window_B->tview_len;
  return composite;
}