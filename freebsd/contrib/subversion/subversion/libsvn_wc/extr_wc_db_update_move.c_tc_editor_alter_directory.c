
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int * props; int * checksum; int location_and_kind; } ;
typedef TYPE_1__ working_node_version_t ;
struct TYPE_15__ {int db; TYPE_7__* wcroot; int operation; int dst_op_depth; int new_version; int old_version; } ;
typedef TYPE_2__ update_move_baton_t ;
typedef scalar_t__ svn_wc_notify_state_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_16__ {scalar_t__ skip; TYPE_2__* umb; } ;
typedef TYPE_3__ node_move_baton_t ;
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
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_wc__db_depth_get_info (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_7__*,char const*,int ,int *,int *) ;
 int svn_wc_conflict_action_edit ;
 int svn_wc_conflict_reason_obstructed ;
 scalar_t__ svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_update ;
 int update_move_list_add (TYPE_7__*,char const*,int ,int ,scalar_t__,int ,scalar_t__,int *,int *,int *) ;
 int update_working_props (scalar_t__*,int **,int **,int **,TYPE_2__*,char const*,TYPE_1__*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_alter_directory(node_move_baton_t *nmb,
                          const char *dst_relpath,
                          apr_hash_t *old_props,
                          apr_hash_t *new_props,
                          apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  working_node_version_t old_version, new_version;
  svn_skel_t *work_items = ((void*)0);
  svn_skel_t *conflict_skel = ((void*)0);
  const char *local_abspath = svn_dirent_join(b->wcroot->abspath, dst_relpath,
                                              scratch_pool);
  svn_wc_notify_state_t prop_state;
  apr_hash_t *actual_props;
  apr_array_header_t *propchanges;
  svn_node_kind_t wc_kind;
  svn_boolean_t obstructed = FALSE;

  SVN_ERR(mark_node_edited(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  SVN_ERR(svn_io_check_path(local_abspath, &wc_kind, scratch_pool));
  if (wc_kind != svn_node_none && wc_kind != svn_node_dir)
    {
      SVN_ERR(create_node_tree_conflict(&conflict_skel, nmb, dst_relpath,
                                        svn_node_dir, svn_node_dir,
                                        svn_wc_conflict_reason_obstructed,
                                        svn_wc_conflict_action_edit,
                                        ((void*)0),
                                        scratch_pool, scratch_pool));
      obstructed = TRUE;
    }

  old_version.location_and_kind = b->old_version;
  new_version.location_and_kind = b->new_version;

  old_version.checksum = ((void*)0);
  old_version.props = old_props;
  new_version.checksum = ((void*)0);
  new_version.props = new_props;

  SVN_ERR(update_working_props(&prop_state, &conflict_skel,
                                &propchanges, &actual_props,
                                b, dst_relpath,
                                &old_version, &new_version,
                                scratch_pool, scratch_pool));

  if (prop_state == svn_wc_notify_state_conflicted)
    {
      const char *move_dst_repos_relpath;

      SVN_ERR(svn_wc__db_depth_get_info(((void*)0), ((void*)0), ((void*)0),
                                        &move_dst_repos_relpath, ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        ((void*)0),
                                        b->wcroot, dst_relpath,
                                        b->dst_op_depth,
                                        scratch_pool, scratch_pool));

      SVN_ERR(create_conflict_markers(&work_items, local_abspath,
                                      b->db, move_dst_repos_relpath,
                                      conflict_skel, b->operation,
                                      &old_version, &new_version,
                                      svn_node_dir, !obstructed,
                                      scratch_pool, scratch_pool));
    }

  SVN_ERR(update_move_list_add(b->wcroot, dst_relpath, b->db,
                               svn_wc_notify_update_update,
                               svn_node_dir,
                               svn_wc_notify_state_inapplicable,
                               prop_state,
                               conflict_skel, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
