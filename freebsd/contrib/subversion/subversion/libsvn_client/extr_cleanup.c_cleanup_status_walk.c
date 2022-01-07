
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_18__ {scalar_t__ node_status; } ;
typedef TYPE_1__ svn_wc_status3_t ;
struct TYPE_19__ {int kind; } ;
typedef TYPE_2__ svn_wc_notify_t ;
typedef int svn_node_kind_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct cleanup_status_walk_baton {TYPE_12__* ctx; int remove_unversioned_items; int remove_ignored_items; int vacuum_pristines; int clear_dav_cache; int fix_timestamps; int break_locks; scalar_t__ include_externals; } ;
typedef int apr_pool_t ;
struct TYPE_17__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_2__*,int *) ;int cancel_baton; int cancel_func; } ;


 int FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 TYPE_3__* do_cleanup (char const*,int ,int ,int ,int ,int ,int ,int ,TYPE_12__*,int *) ;
 int stub1 (int ,TYPE_2__*,int *) ;
 int stub2 (int ,TYPE_2__*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_io_check_path (char const*,int*,int *) ;
 TYPE_3__* svn_io_remove_dir2 (char const*,int ,int ,int ,int *) ;
 TYPE_3__* svn_io_remove_file2 (char const*,int ,int *) ;




 TYPE_2__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_cleanup_external ;
 int svn_wc_notify_delete ;
 scalar_t__ svn_wc_status_external ;
 scalar_t__ svn_wc_status_ignored ;
 scalar_t__ svn_wc_status_unversioned ;

__attribute__((used)) static svn_error_t *
cleanup_status_walk(void *baton,
                    const char *local_abspath,
                    const svn_wc_status3_t *status,
                    apr_pool_t *scratch_pool)
{
  struct cleanup_status_walk_baton *b = baton;
  svn_node_kind_t kind_on_disk;
  svn_wc_notify_t *notify;

  if (status->node_status == svn_wc_status_external && b->include_externals)
    {
      svn_error_t *err;

      SVN_ERR(svn_io_check_path(local_abspath, &kind_on_disk, scratch_pool));
      if (kind_on_disk == 131)
        {
          if (b->ctx->notify_func2)
            {
              notify = svn_wc_create_notify(local_abspath,
                                            svn_wc_notify_cleanup_external,
                                            scratch_pool);
              b->ctx->notify_func2(b->ctx->notify_baton2, notify,
                                   scratch_pool);
            }

          err = do_cleanup(local_abspath,
                           b->break_locks,
                           b->fix_timestamps,
                           b->clear_dav_cache,
                           b->vacuum_pristines,
                           b->remove_unversioned_items,
                           b->remove_ignored_items,
                           TRUE ,
                           b->ctx, scratch_pool);
          if (err && err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY)
            {
              svn_error_clear(err);
              return SVN_NO_ERROR;
            }
          else
            SVN_ERR(err);
        }

      return SVN_NO_ERROR;
    }

  if (status->node_status == svn_wc_status_ignored)
    {
      if (!b->remove_ignored_items)
        return SVN_NO_ERROR;
    }
  else if (status->node_status == svn_wc_status_unversioned)
    {
      if (!b->remove_unversioned_items)
        return SVN_NO_ERROR;
    }
  else
    return SVN_NO_ERROR;

  SVN_ERR(svn_io_check_path(local_abspath, &kind_on_disk, scratch_pool));
  switch (kind_on_disk)
    {
      case 130:
      case 128:
        SVN_ERR(svn_io_remove_file2(local_abspath, FALSE, scratch_pool));
        break;
      case 131:
        SVN_ERR(svn_io_remove_dir2(local_abspath, FALSE,
                                   b->ctx->cancel_func, b->ctx->cancel_baton,
                                   scratch_pool));
        break;
      case 129:
      default:
        return SVN_NO_ERROR;
    }

  if (b->ctx->notify_func2)
    {
      notify = svn_wc_create_notify(local_abspath, svn_wc_notify_delete,
                                    scratch_pool);
      notify->kind = kind_on_disk;
      b->ctx->notify_func2(b->ctx->notify_baton2, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
