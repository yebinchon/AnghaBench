
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_9__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN4 (int ,int ,int *,int *,TYPE_1__*) ;
 int TRUE ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int break_moved_away (TYPE_1__*,int *,char const*,int,int *) ;
 int find_src_op_depth (int*,TYPE_1__*,char const*,int ,int *) ;
 int relpath_depth (char const*) ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 int * svn_wc__db_op_mark_resolved_internal (TYPE_1__*,char const*,int *,int ,int ,int ,int *,int *) ;
 int svn_wc__db_update_move_list_notify (TYPE_1__*,int ,int ,int ,void*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_op_break_moved_away(svn_wc__db_t *db,
                               const char *local_abspath,
                               const char *del_op_root_abspath,
                               svn_boolean_t mark_tc_resolved,
                               svn_wc_notify_func2_t notify_func,
                               void *notify_baton,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *del_relpath;
  int src_op_depth;

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  if (del_op_root_abspath)
    del_relpath = svn_dirent_skip_ancestor(wcroot->abspath,
                                           del_op_root_abspath);
  else
    del_relpath = ((void*)0);


  SVN_WC__DB_WITH_TXN4(
    find_src_op_depth(&src_op_depth, wcroot, local_relpath,
                      del_relpath ? relpath_depth(del_relpath)
                                 : relpath_depth(local_relpath),
                      scratch_pool),
    break_moved_away(wcroot, db, local_relpath, src_op_depth,
                     scratch_pool),
    mark_tc_resolved
        ? svn_wc__db_op_mark_resolved_internal(wcroot, local_relpath, db,
                                               FALSE, FALSE, TRUE,
                                               ((void*)0), scratch_pool)
        : SVN_NO_ERROR,
    SVN_NO_ERROR,
    wcroot);

  SVN_ERR(svn_wc__db_update_move_list_notify(wcroot,
                                             SVN_INVALID_REVNUM,
                                             SVN_INVALID_REVNUM,
                                             notify_func, notify_baton,
                                             scratch_pool));
  return SVN_NO_ERROR;
}
