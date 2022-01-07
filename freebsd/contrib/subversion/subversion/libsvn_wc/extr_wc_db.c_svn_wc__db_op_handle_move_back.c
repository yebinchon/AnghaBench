
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int add_work_items (int ,int const*,int *) ;
 int flush_entries (TYPE_1__*,char const*,int ,int *) ;
 int handle_move_back (int *,TYPE_1__*,char const*,char const*,int const*,int *) ;
 int svn_depth_infinity ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_op_handle_move_back(svn_boolean_t *moved_back,
                               svn_wc__db_t *db,
                               const char *local_abspath,
                               const char *moved_from_abspath,
                               const svn_skel_t *work_items,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *moved_from_relpath;
  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                                                local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  if (moved_back)
    *moved_back = FALSE;

  moved_from_relpath = svn_dirent_skip_ancestor(wcroot->abspath,
                                                moved_from_abspath);

  if (! local_relpath[0]
      || !moved_from_relpath)
    {

      SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));
      return SVN_NO_ERROR;
    }

  SVN_WC__DB_WITH_TXN(handle_move_back(moved_back, wcroot, local_relpath,
                                       moved_from_relpath, work_items,
                                       scratch_pool),
                      wcroot);

  SVN_ERR(flush_entries(wcroot, local_abspath, svn_depth_infinity,
                        scratch_pool));

  return SVN_NO_ERROR;
}
