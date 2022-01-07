
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_11__ ;


struct TYPE_34__ {int * props; int const* checksum; TYPE_1__* location_and_kind; } ;
typedef TYPE_2__ working_node_version_t ;
struct TYPE_35__ {int db; TYPE_11__* wcroot; int operation; int cancel_baton; int cancel_func; TYPE_1__* new_version; TYPE_1__* old_version; } ;
typedef TYPE_3__ update_move_baton_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_36__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_37__ {scalar_t__ skip; TYPE_3__* umb; } ;
typedef TYPE_5__ node_move_baton_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_33__ {int peg_rev; } ;
struct TYPE_32__ {int abspath; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_4__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,int ) ;
 TYPE_4__* copy_working_node (char const*,char const*,TYPE_11__*,int *) ;
 TYPE_4__* create_conflict_markers (int **,char const*,int ,char const*,int *,int ,TYPE_2__*,TYPE_2__*,scalar_t__,int,int *,int *) ;
 TYPE_4__* create_node_tree_conflict (int **,TYPE_5__*,char const*,scalar_t__,scalar_t__,int ,int ,int *,int *,int *) ;
 TYPE_4__* mark_node_edited (TYPE_5__*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 TYPE_4__* svn_wc__db_base_get_info_internal (int *,scalar_t__*,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_11__*,char const*,int *,int *) ;
 TYPE_4__* svn_wc__db_pristine_get_path (char const**,int ,int ,int const*,int *,int *) ;
 TYPE_4__* svn_wc__internal_merge (int **,int **,int*,int ,char const*,char const*,char const*,char const*,char const*,int ,char const*,int *,scalar_t__,int *,int *,int *,int ,int ,int *,int *) ;
 TYPE_4__* svn_wc__wq_build_file_install (int **,int ,char const*,char const*,scalar_t__,scalar_t__,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_reason_edited ;
 int svn_wc_conflict_reason_missing ;
 int svn_wc_conflict_reason_obstructed ;
 int svn_wc_merge_conflict ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_state_unchanged ;
 int svn_wc_notify_update_update ;
 TYPE_4__* update_move_list_add (TYPE_11__*,char const*,int ,int ,scalar_t__,int ,int ,int *,int *,int *) ;
 TYPE_4__* update_working_props (int *,int **,int **,int **,TYPE_3__*,char const*,TYPE_2__*,TYPE_2__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_update_incoming_moved_file(node_move_baton_t *nmb,
                                     const char *dst_relpath,
                                     const char *src_relpath,
                                     const svn_checksum_t *src_checksum,
                                     const svn_checksum_t *dst_checksum,
                                     apr_hash_t *dst_props,
                                     apr_hash_t *src_props,
                                     svn_boolean_t do_text_merge,
                                     apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  working_node_version_t old_version, new_version;
  const char *dst_abspath = svn_dirent_join(b->wcroot->abspath,
                                            dst_relpath,
                                            scratch_pool);
  svn_skel_t *conflict_skel = ((void*)0);
  enum svn_wc_merge_outcome_t merge_outcome;
  svn_wc_notify_state_t prop_state = svn_wc_notify_state_unchanged;
  svn_wc_notify_state_t content_state = svn_wc_notify_state_unchanged;
  svn_skel_t *work_item, *work_items = ((void*)0);
  svn_node_kind_t dst_kind_on_disk;
  const char *dst_repos_relpath;
  svn_boolean_t tree_conflict = FALSE;
  svn_node_kind_t dst_db_kind;
  svn_error_t *err;

  SVN_ERR(mark_node_edited(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  err = svn_wc__db_base_get_info_internal(((void*)0), &dst_db_kind, ((void*)0),
                                          &dst_repos_relpath,
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                          b->wcroot, dst_relpath,
                                          scratch_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      const char *dst_parent_relpath;
      const char *dst_parent_repos_relpath;
      const char *src_abspath;
      svn_error_clear(err);


      SVN_ERR(copy_working_node(src_relpath, dst_relpath, b->wcroot,
                                scratch_pool));


      dst_db_kind = svn_node_none;
      SVN_ERR(create_node_tree_conflict(&conflict_skel, nmb, dst_relpath,
                                        svn_node_file, dst_db_kind,
                                        svn_wc_conflict_reason_edited,
                                        svn_wc_conflict_action_delete,
                                        ((void*)0), scratch_pool, scratch_pool));
      dst_parent_relpath = svn_relpath_dirname(dst_relpath, scratch_pool);
      SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0),
                                                &dst_parent_repos_relpath,
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), b->wcroot,
                                                dst_parent_relpath,
                                                scratch_pool, scratch_pool));
      dst_repos_relpath = svn_relpath_join(dst_parent_repos_relpath,
                                           svn_relpath_basename(dst_relpath,
                                                                scratch_pool),
                                           scratch_pool);
      tree_conflict = TRUE;


      src_abspath = svn_dirent_join(b->wcroot->abspath, src_relpath,
                                    scratch_pool);
      SVN_ERR(svn_wc__wq_build_file_install(&work_item, b->db,
                                            dst_abspath,
                                            src_abspath,
                                            FALSE ,
                                            TRUE ,
                                            scratch_pool, scratch_pool));
      work_items = svn_wc__wq_merge(work_items, work_item, scratch_pool);
    }
  else
    SVN_ERR(err);

  if ((dst_db_kind == svn_node_none || dst_db_kind != svn_node_file) &&
      conflict_skel == ((void*)0))
    {
      SVN_ERR(create_node_tree_conflict(&conflict_skel, nmb, dst_relpath,
                                        svn_node_file, dst_db_kind,
                                        dst_db_kind == svn_node_none
                                          ? svn_wc_conflict_reason_missing
                                          : svn_wc_conflict_reason_obstructed,
                                        svn_wc_conflict_action_edit,
                                        ((void*)0),
                                        scratch_pool, scratch_pool));
      tree_conflict = TRUE;
    }

  SVN_ERR(svn_io_check_path(dst_abspath, &dst_kind_on_disk, scratch_pool));
  if ((dst_kind_on_disk == svn_node_none || dst_kind_on_disk != svn_node_file)
      && conflict_skel == ((void*)0))
    {
      SVN_ERR(create_node_tree_conflict(&conflict_skel, nmb, dst_relpath,
                                        svn_node_file, dst_kind_on_disk,
                                        dst_kind_on_disk == svn_node_none
                                          ? svn_wc_conflict_reason_missing
                                          : svn_wc_conflict_reason_obstructed,
                                        svn_wc_conflict_action_edit,
                                        ((void*)0),
                                        scratch_pool, scratch_pool));
      tree_conflict = TRUE;
    }

  old_version.location_and_kind = b->old_version;
  new_version.location_and_kind = b->new_version;

  old_version.checksum = src_checksum;
  old_version.props = src_props;
  new_version.checksum = dst_checksum;
  new_version.props = dst_props;


  if (conflict_skel == ((void*)0))
    {
      apr_hash_t *actual_props;
      apr_array_header_t *propchanges;

      SVN_ERR(update_working_props(&prop_state, &conflict_skel, &propchanges,
                                   &actual_props, b, dst_relpath,
                                   &old_version, &new_version,
                                   scratch_pool, scratch_pool));
      if (do_text_merge)
        {
          const char *old_pristine_abspath;
          const char *src_abspath;
          const char *label_left;
          const char *label_target;
          SVN_ERR(svn_wc__db_pristine_get_path(&old_pristine_abspath,
                                               b->db, b->wcroot->abspath,
                                               src_checksum,
                                               scratch_pool, scratch_pool));
          src_abspath = svn_dirent_join(b->wcroot->abspath, src_relpath,
                                        scratch_pool);
          label_left = apr_psprintf(scratch_pool, ".r%ld",
                                    b->old_version->peg_rev);
          label_target = apr_psprintf(scratch_pool, ".r%ld",
                                      b->new_version->peg_rev);
          SVN_ERR(svn_wc__internal_merge(&work_item, &conflict_skel,
                                         &merge_outcome, b->db,
                                         old_pristine_abspath,
                                         src_abspath,
                                         dst_abspath,
                                         dst_abspath,
                                         label_left,
                                         _(".working"),
                                         label_target,
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



  if (conflict_skel)
    {
      SVN_ERR(create_conflict_markers(&work_item, dst_abspath, b->db,
                                      dst_repos_relpath, conflict_skel,
                                      b->operation, &old_version, &new_version,
                                      svn_node_file, !tree_conflict,
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
