
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int kind; } ;
typedef TYPE_3__ svn_wc_notify_t ;
typedef int svn_wc_notify_action_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_10__ {scalar_t__ ancestral; } ;
struct TYPE_12__ {TYPE_1__* ctx; int merged_abspaths; scalar_t__ reintegrate_merge; TYPE_2__ merge_source; } ;
typedef TYPE_4__ merge_cmd_baton_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_3__*,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int notify_merge_begin (TYPE_4__*,char const*,int ,int *) ;
 int store_path (int ,char const*) ;
 int stub1 (int ,TYPE_3__*,int *) ;
 TYPE_3__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_update_add ;
 int svn_wc_notify_update_replace ;

__attribute__((used)) static svn_error_t *
record_update_add(merge_cmd_baton_t *merge_b,
                  const char *local_abspath,
                  svn_node_kind_t kind,
                  svn_boolean_t notify_replaced,
                  apr_pool_t *scratch_pool)
{
  if (merge_b->merge_source.ancestral || merge_b->reintegrate_merge)
    {
      store_path(merge_b->merged_abspaths, local_abspath);
    }

  if (merge_b->ctx->notify_func2)
    {
      svn_wc_notify_t *notify;
      svn_wc_notify_action_t action = svn_wc_notify_update_add;

      SVN_ERR(notify_merge_begin(merge_b, local_abspath, FALSE, scratch_pool));

      if (notify_replaced)
        action = svn_wc_notify_update_replace;

      notify = svn_wc_create_notify(local_abspath, action, scratch_pool);
      notify->kind = kind;

      merge_b->ctx->notify_func2(merge_b->ctx->notify_baton2, notify,
                                 scratch_pool);
    }

  return SVN_NO_ERROR;
}
