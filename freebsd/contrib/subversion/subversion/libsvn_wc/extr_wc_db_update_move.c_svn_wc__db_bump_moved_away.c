
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int STMT_CREATE_UPDATE_MOVE_LIST ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int bump_mark_tree_conflict (TYPE_1__*,char const*,int ,char const*,char const*,int *,int *) ;
 int bump_moved_away (TYPE_1__*,char const*,int ,int ,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_sqlite__exec_statements (int ,int ) ;
 TYPE_2__* svn_wc__db_scan_moved_to_internal (char const**,char const**,char const**,TYPE_1__*,char const*,int ,int *,int *) ;
 int svn_wc__db_wclock_owns_lock_internal (scalar_t__*,TYPE_1__*,char const*,int ,int *) ;

svn_error_t *
svn_wc__db_bump_moved_away(svn_wc__db_wcroot_t *wcroot,
                           const char *local_relpath,
                           svn_depth_t depth,
                           svn_wc__db_t *db,
                           apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  if (local_relpath[0] != '\0')
    {
      const char *move_dst_op_root_relpath;
      const char *move_src_root_relpath, *delete_relpath;
      svn_error_t *err;



      err = svn_wc__db_scan_moved_to_internal(&move_src_root_relpath,
                                              &move_dst_op_root_relpath,
                                              &delete_relpath,
                                              wcroot, local_relpath,
                                              0 ,
                                              scratch_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
            return svn_error_trace(err);

          svn_error_clear(err);
        }
      else if (move_src_root_relpath)
        {
          if (strcmp(move_src_root_relpath, local_relpath))
            {





              svn_boolean_t locked;

              SVN_ERR(svn_wc__db_wclock_owns_lock_internal(
                                &locked, wcroot,
                                move_src_root_relpath,
                                FALSE, scratch_pool));

              if (locked)
                {
                  SVN_ERR(bump_mark_tree_conflict(wcroot,
                                                  move_src_root_relpath, 0,
                                                  delete_relpath,
                                                  move_dst_op_root_relpath,
                                                  db, scratch_pool));
                }
              return SVN_NO_ERROR;
            }
        }
    }

  SVN_ERR(bump_moved_away(wcroot, local_relpath, 0, depth, db, scratch_pool));

  return SVN_NO_ERROR;
}
