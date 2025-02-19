
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int const* checksum; int * props; int location_and_kind; } ;
typedef TYPE_1__ working_node_version_t ;
struct TYPE_15__ {int db; TYPE_7__* wcroot; int operation; int dst_op_depth; int cancel_baton; int cancel_func; int new_version; int old_version; } ;
typedef TYPE_2__ update_move_baton_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_16__ {scalar_t__ skip; TYPE_2__* umb; } ;
typedef TYPE_3__ node_move_baton_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_17__ {int abspath; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int create_conflict_markers (int **,char const*,int ,char const*,int *,int ,TYPE_1__*,TYPE_1__*,scalar_t__,int,int *,int *) ;
 int create_node_tree_conflict (int **,TYPE_3__*,char const*,scalar_t__,scalar_t__,int ,int ,int *,int *,int *) ;
 int mark_node_edited (TYPE_3__*,int *) ;
 int svn_checksum_match (int const*,int const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_wc__db_depth_get_info (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_7__*,char const*,int ,int *,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int ,int ,int const*,int *,int *) ;
 int svn_wc__internal_file_modified_p (int *,int ,char const*,int ,int *) ;
 int svn_wc__internal_merge (int **,int **,int*,int ,char const*,char const*,char const*,char const*,int *,int *,int *,int *,int ,int *,int *,int *,int ,int ,int *,int *) ;
 int svn_wc__wq_build_file_install (int **,int ,char const*,int *,int ,int ,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_reason_obstructed ;
 int svn_wc_merge_conflict ;
 int svn_wc_notify_state_changed ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_state_unchanged ;
 int svn_wc_notify_update_update ;
 int update_move_list_add (TYPE_7__*,char const*,int ,int ,scalar_t__,int ,int ,int *,int *,int *) ;
 int update_working_props (int *,int **,int **,int **,TYPE_2__*,char const*,TYPE_1__*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_alter_file(node_move_baton_t *nmb,
                     const char *dst_relpath,
                     const svn_checksum_t *old_checksum,
                     const svn_checksum_t *new_checksum,
                     apr_hash_t *old_props,
                     apr_hash_t *new_props,
                     apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  working_node_version_t old_version, new_version;
  const char *local_abspath = svn_dirent_join(b->wcroot->abspath,
                                              dst_relpath,
                                              scratch_pool);
  const char *old_pristine_abspath;
  const char *new_pristine_abspath;
  svn_skel_t *conflict_skel = ((void*)0);
  apr_hash_t *actual_props;
  apr_array_header_t *propchanges;
  enum svn_wc_merge_outcome_t merge_outcome;
  svn_wc_notify_state_t prop_state, content_state;
  svn_skel_t *work_item, *work_items = ((void*)0);
  svn_node_kind_t wc_kind;
  svn_boolean_t obstructed = FALSE;

  SVN_ERR(mark_node_edited(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  SVN_ERR(svn_io_check_path(local_abspath, &wc_kind, scratch_pool));
  if (wc_kind != svn_node_none && wc_kind != svn_node_file)
    {
      SVN_ERR(create_node_tree_conflict(&conflict_skel, nmb, dst_relpath,
                                        svn_node_file, svn_node_file,
                                        svn_wc_conflict_reason_obstructed,
                                        svn_wc_conflict_action_edit,
                                        ((void*)0),
                                        scratch_pool, scratch_pool));
      obstructed = TRUE;
    }

  old_version.location_and_kind = b->old_version;
  new_version.location_and_kind = b->new_version;

  old_version.checksum = old_checksum;
  old_version.props = old_props;
  new_version.checksum = new_checksum;
  new_version.props = new_props;


  SVN_ERR(update_working_props(&prop_state, &conflict_skel, &propchanges,
                               &actual_props, b, dst_relpath,
                               &old_version, &new_version,
                               scratch_pool, scratch_pool));

  if (!obstructed
      && !svn_checksum_match(new_version.checksum, old_version.checksum))
    {
      svn_boolean_t is_locally_modified;

      SVN_ERR(svn_wc__internal_file_modified_p(&is_locally_modified,
                                               b->db, local_abspath,
                                               FALSE ,
                                               scratch_pool));
      if (!is_locally_modified)
        {
          SVN_ERR(svn_wc__wq_build_file_install(&work_item, b->db,
                                                local_abspath,
                                                ((void*)0),
                                                FALSE ,
                                                TRUE ,
                                                scratch_pool, scratch_pool));

          work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);

          content_state = svn_wc_notify_state_changed;
        }
      else
        {






          SVN_ERR(svn_wc__db_pristine_get_path(&old_pristine_abspath,
                                               b->db, b->wcroot->abspath,
                                               old_version.checksum,
                                               scratch_pool, scratch_pool));
          SVN_ERR(svn_wc__db_pristine_get_path(&new_pristine_abspath,
                                               b->db, b->wcroot->abspath,
                                               new_version.checksum,
                                               scratch_pool, scratch_pool));
          SVN_ERR(svn_wc__internal_merge(&work_item, &conflict_skel,
                                         &merge_outcome, b->db,
                                         old_pristine_abspath,
                                         new_pristine_abspath,
                                         local_abspath,
                                         local_abspath,
                                         ((void*)0), ((void*)0), ((void*)0),
                                         actual_props,
                                         FALSE,
                                         ((void*)0),
                                         ((void*)0),
                                         propchanges,
                                         b->cancel_func, b->cancel_baton,
                                         scratch_pool, scratch_pool));

          work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);

          if (merge_outcome == svn_wc_merge_conflict)
            content_state = svn_wc_notify_state_conflicted;
          else
            content_state = svn_wc_notify_state_merged;
        }
    }
  else
    content_state = svn_wc_notify_state_unchanged;



  if (conflict_skel)
    {
      const char *move_dst_repos_relpath;

      SVN_ERR(svn_wc__db_depth_get_info(((void*)0), ((void*)0), ((void*)0),
                                        &move_dst_repos_relpath, ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        ((void*)0),
                                        b->wcroot, dst_relpath,
                                        b->dst_op_depth,
                                        scratch_pool, scratch_pool));

      SVN_ERR(create_conflict_markers(&work_item, local_abspath, b->db,
                                      move_dst_repos_relpath, conflict_skel,
                                      b->operation, &old_version, &new_version,
                                      svn_node_file, !obstructed,
                                      scratch_pool, scratch_pool));

      work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);
    }

  SVN_ERR(update_move_list_add(b->wcroot, dst_relpath, b->db,
                               svn_wc_notify_update_update,
                               svn_node_file,
                               content_state,
                               prop_state,
                               conflict_skel, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
