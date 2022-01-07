
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct with_triggers_baton_t {int cb_func; struct revert_baton_t* cb_baton; int * member_3; int * member_2; int member_1; int member_0; } ;
struct revert_baton_t {int clear_changelists; int * db; } ;
typedef int apr_pool_t ;


 int STMT_CREATE_REVERT_LIST ;
 int STMT_DROP_REVERT_LIST_TRIGGERS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int _ (char*) ;
 int flush_entries (int *,char const*,int ,int *) ;
 int op_revert_recursive_txn ;
 int op_revert_txn ;


 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;
 int with_triggers (struct with_triggers_baton_t*,int *,char const*,int *) ;

svn_error_t *
svn_wc__db_op_revert(svn_wc__db_t *db,
                     const char *local_abspath,
                     svn_depth_t depth,
                     svn_boolean_t clear_changelists,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  struct revert_baton_t rvb;
  struct with_triggers_baton_t wtb = { STMT_CREATE_REVERT_LIST,
                                       STMT_DROP_REVERT_LIST_TRIGGERS,
                                       ((void*)0), ((void*)0)};

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  rvb.db = db;
  rvb.clear_changelists = clear_changelists;
  wtb.cb_baton = &rvb;

  switch (depth)
    {
    case 129:
      wtb.cb_func = op_revert_txn;
      break;
    case 128:
      wtb.cb_func = op_revert_recursive_txn;
      break;
    default:
      return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                               _("Unsupported depth for revert of '%s'"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                              db, local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(with_triggers(&wtb, wcroot, local_relpath, scratch_pool),
                      wcroot);

  SVN_ERR(flush_entries(wcroot, local_abspath, depth, scratch_pool));

  return SVN_NO_ERROR;
}
