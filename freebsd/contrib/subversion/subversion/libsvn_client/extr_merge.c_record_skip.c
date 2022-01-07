
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int prop_state; int content_state; int kind; } ;
typedef TYPE_3__ svn_wc_notify_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_wc_notify_action_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct merge_dir_baton_t {scalar_t__ shadowed; } ;
struct TYPE_9__ {scalar_t__ ancestral; } ;
struct TYPE_12__ {TYPE_2__* ctx; int skipped_abspaths; scalar_t__ reintegrate_merge; TYPE_1__ merge_source; scalar_t__ record_only; } ;
typedef TYPE_4__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_3__*,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int notify_merge_begin (TYPE_4__*,char const*,int ,int *) ;
 int store_path (int ,char const*) ;
 int stub1 (int ,TYPE_3__*,int *) ;
 TYPE_3__* svn_wc_create_notify (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
record_skip(merge_cmd_baton_t *merge_b,
            const char *local_abspath,
            svn_node_kind_t kind,
            svn_wc_notify_action_t action,
            svn_wc_notify_state_t state,
            struct merge_dir_baton_t *pdb,
            apr_pool_t *scratch_pool)
{
  if (merge_b->record_only)
    return SVN_NO_ERROR;

  if ((merge_b->merge_source.ancestral || merge_b->reintegrate_merge)
      && !(pdb && pdb->shadowed))
    {
      store_path(merge_b->skipped_abspaths, local_abspath);
    }

  if (merge_b->ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      SVN_ERR(notify_merge_begin(merge_b, local_abspath, FALSE, scratch_pool));

      notify = svn_wc_create_notify(local_abspath, action, scratch_pool);
      notify->kind = kind;
      notify->content_state = notify->prop_state = state;

      merge_b->ctx->notify_func2(merge_b->ctx->notify_baton2, notify,
                                 scratch_pool);
    }
  return SVN_NO_ERROR;
}
