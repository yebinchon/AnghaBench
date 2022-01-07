
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef void* svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_12__ {char const* original_repos_relpath; char const* changed_author; int op_depth; int moved_here; int const* conflict; int const* work_items; int depth; int const* children; int original_repos_id; int not_present_op_depth; int changed_date; void* changed_rev; int const* props; void* original_revnum; int kind; int presence; } ;
typedef TYPE_2__ insert_working_baton_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int blank_iwb (TYPE_2__*) ;
 int create_repos_id (int *,char const*,char const*,int ,int *) ;
 int flush_entries (TYPE_1__*,char const*,int ,int *) ;
 int insert_working_node (TYPE_2__*,TYPE_1__*,char const*,int *) ;
 int op_depth_for_copy (int*,int *,int*,int ,char const*,void*,TYPE_1__*,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_node_dir ;
 int svn_wc__db_status_normal ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_op_copy_dir(svn_wc__db_t *db,
                       const char *local_abspath,
                       const apr_hash_t *props,
                       svn_revnum_t changed_rev,
                       apr_time_t changed_date,
                       const char *changed_author,
                       const char *original_repos_relpath,
                       const char *original_root_url,
                       const char *original_uuid,
                       svn_revnum_t original_revision,
                       const apr_array_header_t *children,
                       svn_depth_t depth,
                       svn_boolean_t is_move,
                       const svn_skel_t *conflict,
                       const svn_skel_t *work_items,
                       apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  insert_working_baton_t iwb;
  int parent_op_depth;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(props != ((void*)0));






  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  blank_iwb(&iwb);

  iwb.presence = svn_wc__db_status_normal;
  iwb.kind = svn_node_dir;

  if (original_root_url != ((void*)0))
    {
      SVN_ERR(create_repos_id(&iwb.original_repos_id,
                              original_root_url, original_uuid,
                              wcroot->sdb, scratch_pool));
      iwb.original_repos_relpath = original_repos_relpath;
      iwb.original_revnum = original_revision;

      iwb.props = props;
      iwb.changed_rev = changed_rev;
      iwb.changed_date = changed_date;
      iwb.changed_author = changed_author;
    }


  SVN_ERR(op_depth_for_copy(&iwb.op_depth, &iwb.not_present_op_depth,
                            &parent_op_depth, iwb.original_repos_id,
                            original_repos_relpath, original_revision,
                            wcroot, local_relpath, scratch_pool));

  iwb.children = children;
  iwb.depth = depth;
  iwb.moved_here = is_move && (parent_op_depth == 0 ||
                               iwb.op_depth == parent_op_depth);

  iwb.work_items = work_items;
  iwb.conflict = conflict;

  SVN_WC__DB_WITH_TXN(
                insert_working_node(&iwb, wcroot, local_relpath, scratch_pool),
                wcroot);
  SVN_ERR(flush_entries(wcroot, local_abspath, depth, scratch_pool));

  return SVN_NO_ERROR;
}
