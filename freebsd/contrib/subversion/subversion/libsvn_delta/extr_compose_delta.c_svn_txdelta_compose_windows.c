
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int num_ops; int tview_len; int sview_len; int sview_offset; TYPE_1__* new_data; TYPE_3__* ops; } ;
typedef TYPE_2__ svn_txdelta_window_t ;
struct TYPE_19__ {scalar_t__ action_code; int offset; scalar_t__ length; } ;
typedef TYPE_3__ svn_txdelta_op_t ;
struct TYPE_20__ {int new_data; int member_0; } ;
typedef TYPE_4__ svn_txdelta__ops_baton_t ;
struct TYPE_21__ {scalar_t__ kind; int target_offset; scalar_t__ limit; scalar_t__ offset; struct TYPE_21__* next; } ;
typedef TYPE_5__ range_list_node_t ;
typedef int range_index_t ;
typedef int offset_index_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_17__ {char* data; } ;


 int assert (int) ;
 TYPE_5__* build_range_list (scalar_t__ const,scalar_t__ const,int *) ;
 int copy_source_ops (scalar_t__,scalar_t__,scalar_t__,int ,TYPE_4__*,TYPE_2__ const*,int *,int *) ;
 int * create_offset_index (TYPE_2__ const*,int *) ;
 int * create_range_index (int *) ;
 int free_range_list (TYPE_5__*,int *) ;
 int insert_range (scalar_t__ const,scalar_t__ const,scalar_t__,int *) ;
 scalar_t__ range_from_target ;
 int splay_range_index (scalar_t__ const,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_create_empty (int *) ;
 int svn_txdelta__insert_op (TYPE_4__*,scalar_t__,int,scalar_t__,char const*,int *) ;
 TYPE_2__* svn_txdelta__make_window (TYPE_4__*,int *) ;
 scalar_t__ svn_txdelta_new ;
 scalar_t__ svn_txdelta_source ;
 scalar_t__ svn_txdelta_target ;

svn_txdelta_window_t *
svn_txdelta_compose_windows(const svn_txdelta_window_t *window_A,
                            const svn_txdelta_window_t *window_B,
                            apr_pool_t *pool)
{
  svn_txdelta__ops_baton_t build_baton = { 0 };
  svn_txdelta_window_t *composite;
  apr_pool_t *subpool = svn_pool_create(pool);
  offset_index_t *offset_index = create_offset_index(window_A, subpool);
  range_index_t *range_index = create_range_index(subpool);
  apr_size_t target_offset = 0;
  int i;




  build_baton.new_data = svn_stringbuf_create_empty(pool);
  for (i = 0; i < window_B->num_ops; ++i)
    {
      const svn_txdelta_op_t *const op = &window_B->ops[i];
      if (op->action_code != svn_txdelta_source)
        {


          const char *const new_data =
            (op->action_code == svn_txdelta_new
             ? window_B->new_data->data + op->offset
             : ((void*)0));
          svn_txdelta__insert_op(&build_baton, op->action_code,
                                 op->offset, op->length,
                                 new_data, pool);
        }
      else
        {



          const apr_size_t offset = op->offset;
          const apr_size_t limit = op->offset + op->length;
          range_list_node_t *range_list, *range;
          apr_size_t tgt_off = target_offset;

          splay_range_index(offset, range_index);
          range_list = build_range_list(offset, limit, range_index);

          for (range = range_list; range; range = range->next)
            {
              if (range->kind == range_from_target)
                svn_txdelta__insert_op(&build_baton, svn_txdelta_target,
                                       range->target_offset,
                                       range->limit - range->offset,
                                       ((void*)0), pool);
              else
                copy_source_ops(range->offset, range->limit, tgt_off, 0,
                                &build_baton, window_A, offset_index,
                                pool);

              tgt_off += range->limit - range->offset;
            }
          assert(tgt_off == target_offset + op->length);

          free_range_list(range_list, range_index);
          insert_range(offset, limit, target_offset, range_index);
        }


      target_offset += op->length;
    }

  svn_pool_destroy(subpool);

  composite = svn_txdelta__make_window(&build_baton, pool);
  composite->sview_offset = window_A->sview_offset;
  composite->sview_len = window_A->sview_len;
  composite->tview_len = window_B->tview_len;
  return composite;
}
