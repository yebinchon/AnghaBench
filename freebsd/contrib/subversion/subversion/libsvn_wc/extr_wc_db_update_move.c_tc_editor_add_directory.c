
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int db; TYPE_3__* wcroot; } ;
typedef TYPE_1__ update_move_baton_t ;
typedef int svn_wc_conflict_reason_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ skip; scalar_t__ shadowed; TYPE_1__* umb; } ;
typedef TYPE_2__ node_move_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_10__ {int abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int create_node_tree_conflict (int **,TYPE_2__*,char const*,scalar_t__,int ,int ,int ,int *,int *,int *) ;
 int mark_parent_edited (TYPE_2__*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_wc__db_read_info_internal (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_3__*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 int svn_wc__wq_build_dir_install (int **,int ,char const*,int *,int *) ;
 int svn_wc_conflict_action_add ;
 int svn_wc_conflict_action_replace ;
 int svn_wc_conflict_reason_added ;
 int svn_wc_conflict_reason_deleted ;
 int svn_wc_conflict_reason_replaced ;
 int svn_wc_conflict_reason_unversioned ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_add ;
 int svn_wc_notify_update_replace ;
 int update_move_list_add (TYPE_3__*,char const*,int ,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_add_directory(node_move_baton_t *nmb,
                        const char *relpath,
                        svn_node_kind_t old_kind,
                        apr_hash_t *props,
                        apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  const char *local_abspath;
  svn_node_kind_t wc_kind;
  svn_skel_t *work_item = ((void*)0);
  svn_skel_t *conflict = ((void*)0);
  svn_wc_conflict_reason_t reason = svn_wc_conflict_reason_unversioned;

  SVN_ERR(mark_parent_edited(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  if (nmb->shadowed)
    {
      svn_wc__db_status_t status;

      SVN_ERR(svn_wc__db_read_info_internal(&status, &wc_kind, ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0),
                                            b->wcroot, relpath,
                                            scratch_pool, scratch_pool));

      if (status == svn_wc__db_status_deleted)
        reason = svn_wc_conflict_reason_deleted;
      else if (status != svn_wc__db_status_added)
        wc_kind = svn_node_none;
      else if (old_kind == svn_node_none)
        reason = svn_wc_conflict_reason_added;
      else
        reason = svn_wc_conflict_reason_replaced;
    }
  else
    wc_kind = svn_node_none;

  local_abspath = svn_dirent_join(b->wcroot->abspath, relpath, scratch_pool);

  if (wc_kind == svn_node_none)
    {

      SVN_ERR(svn_io_check_path(local_abspath, &wc_kind, scratch_pool));
    }

  if (!nmb->shadowed && wc_kind == old_kind)
    wc_kind = svn_node_none;

  if (wc_kind != svn_node_none
      && (nmb->shadowed || wc_kind != old_kind))
    {
      SVN_ERR(create_node_tree_conflict(&conflict, nmb, relpath,
                                        old_kind, svn_node_dir,
                                        reason,
                                        (old_kind == svn_node_none)
                                          ? svn_wc_conflict_action_add
                                          : svn_wc_conflict_action_replace,
                                        ((void*)0),
                                        scratch_pool, scratch_pool));
      nmb->skip = TRUE;
    }
  else
    {
      SVN_ERR(svn_wc__wq_build_dir_install(&work_item, b->db, local_abspath,
                                           scratch_pool, scratch_pool));
    }

  SVN_ERR(update_move_list_add(b->wcroot, relpath, b->db,
                               (old_kind == svn_node_none)
                                  ? svn_wc_notify_update_add
                                  : svn_wc_notify_update_replace,
                               svn_node_dir,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, work_item, scratch_pool));
  return SVN_NO_ERROR;
}
