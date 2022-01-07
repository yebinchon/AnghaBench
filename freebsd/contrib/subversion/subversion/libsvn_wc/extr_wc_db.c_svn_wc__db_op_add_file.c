
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int const* work_items; int const* new_actual_props; int update_actual_props; int op_depth; int kind; int presence; } ;
typedef TYPE_1__ insert_working_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int TRUE ;
 int VERIFY_USABLE_WCROOT (int *) ;
 scalar_t__ apr_hash_count (int *) ;
 int blank_iwb (TYPE_1__*) ;
 int flush_entries (int *,char const*,int ,int *) ;
 int insert_working_node (TYPE_1__*,int *,char const*,int *) ;
 int relpath_depth (char const*) ;
 int svn_depth_empty ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_node_file ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 int svn_wc__db_status_normal ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_op_add_file(svn_wc__db_t *db,
                       const char *local_abspath,
                       const apr_hash_t *props,
                       const svn_skel_t *work_items,
                       apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  insert_working_baton_t iwb;
  const char *dir_abspath;
  const char *name;


  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  svn_dirent_split(&dir_abspath, &name, local_abspath, scratch_pool);

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              dir_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  blank_iwb(&iwb);

  local_relpath = svn_relpath_join(local_relpath, name, scratch_pool);
  iwb.presence = svn_wc__db_status_normal;
  iwb.kind = svn_node_file;
  iwb.op_depth = relpath_depth(local_relpath);
  if (props && apr_hash_count((apr_hash_t *)props))
    {
      iwb.update_actual_props = TRUE;
      iwb.new_actual_props = props;
    }

  iwb.work_items = work_items;

  SVN_WC__DB_WITH_TXN(
            insert_working_node(&iwb, wcroot, local_relpath, scratch_pool),
            wcroot);
  SVN_ERR(flush_entries(wcroot, local_abspath, svn_depth_empty, scratch_pool));

  return SVN_NO_ERROR;
}
