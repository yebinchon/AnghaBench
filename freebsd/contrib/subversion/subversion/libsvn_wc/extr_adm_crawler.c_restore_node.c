
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int restore_file (int *,char const*,int ,int ,int ,void*,int *) ;
 int stub1 (void*,TYPE_1__*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_restore ;

__attribute__((used)) static svn_error_t *
restore_node(svn_wc__db_t *db,
             const char *local_abspath,
             svn_node_kind_t kind,
             svn_boolean_t mark_resolved_text_conflict,
             svn_boolean_t use_commit_times,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             svn_wc_notify_func2_t notify_func,
             void *notify_baton,
             apr_pool_t *scratch_pool)
{
  if (kind == svn_node_file || kind == svn_node_symlink)
    {

      SVN_ERR(restore_file(db, local_abspath, use_commit_times,
                           mark_resolved_text_conflict,
                           cancel_func, cancel_baton,
                           scratch_pool));
    }
  else if (kind == svn_node_dir)
    {

      SVN_ERR(svn_io_dir_make(local_abspath, APR_OS_DEFAULT, scratch_pool));
    }


  if (notify_func != ((void*)0))
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(local_abspath,
                                                     svn_wc_notify_restore,
                                                     scratch_pool);
      notify->kind = svn_node_file;
      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
