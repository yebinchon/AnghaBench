
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_wc_notify_func2_t ;
struct TYPE_8__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct op_delete_baton_t {char const* moved_to_relpath; int notify; int delete_dir_externals; int * work_items; int * conflict; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int STMT_FINALIZE_DELETE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int TRUE ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int _ (char*) ;
 int delete_node (struct op_delete_baton_t*,TYPE_1__*,char const*,int *) ;
 int do_delete_notify ;
 int flush_entries (TYPE_1__*,char const*,int ,int *) ;
 int op_delete_txn ;
 scalar_t__ strcmp (int ,int ) ;
 int svn_depth_infinity ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;
 int with_finalization (TYPE_1__*,char const*,int ,struct op_delete_baton_t*,int ,int *,int ,void*,scalar_t__,void*,int ,int *) ;

svn_error_t *
svn_wc__db_op_delete(svn_wc__db_t *db,
                     const char *local_abspath,
                     const char *moved_to_abspath,
                     svn_boolean_t delete_dir_externals,
                     svn_skel_t *conflict,
                     svn_skel_t *work_items,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     svn_wc_notify_func2_t notify_func,
                     void *notify_baton,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  svn_wc__db_wcroot_t *moved_to_wcroot;
  const char *local_relpath;
  const char *moved_to_relpath;
  struct op_delete_baton_t odb;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  if (moved_to_abspath)
    {
      SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&moved_to_wcroot,
                                                    &moved_to_relpath,
                                                    db, moved_to_abspath,
                                                    scratch_pool,
                                                    scratch_pool));
      VERIFY_USABLE_WCROOT(moved_to_wcroot);

      if (strcmp(wcroot->abspath, moved_to_wcroot->abspath) != 0)
        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("Cannot move '%s' to '%s' because they "
                                   "are not in the same working copy"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool),
                                 svn_dirent_local_style(moved_to_abspath,
                                                        scratch_pool));
    }
  else
    moved_to_relpath = ((void*)0);

  odb.moved_to_relpath = moved_to_relpath;
  odb.conflict = conflict;
  odb.work_items = work_items;
  odb.delete_dir_externals = delete_dir_externals;

  if (notify_func)
    {


      odb.notify = TRUE;
      SVN_ERR(with_finalization(wcroot, local_relpath,
                                op_delete_txn, &odb,
                                do_delete_notify, ((void*)0),
                                cancel_func, cancel_baton,
                                notify_func, notify_baton,
                                STMT_FINALIZE_DELETE,
                                scratch_pool));
    }
  else
    {

      odb.notify = FALSE;
      SVN_WC__DB_WITH_TXN(
                    delete_node(&odb, wcroot, local_relpath, scratch_pool),
                    wcroot);
    }

  SVN_ERR(flush_entries(wcroot, local_abspath, svn_depth_infinity,
                        scratch_pool));

  return SVN_NO_ERROR;
}
