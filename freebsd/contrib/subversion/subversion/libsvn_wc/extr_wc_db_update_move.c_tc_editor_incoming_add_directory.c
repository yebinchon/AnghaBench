
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
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ skip; TYPE_1__* umb; } ;
typedef TYPE_2__ node_move_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_10__ {int abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int copy_working_node (char const*,char const*,TYPE_3__*,int *) ;
 int create_node_tree_conflict (int **,TYPE_2__*,char const*,scalar_t__,int ,int ,int ,int *,int *,int *) ;
 int mark_parent_edited (TYPE_2__*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_wc__wq_build_dir_install (int **,int ,char const*,int *,int *) ;
 int svn_wc_conflict_action_add ;
 int svn_wc_conflict_action_replace ;
 int svn_wc_conflict_reason_unversioned ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_add ;
 int svn_wc_notify_update_replace ;
 int update_move_list_add (TYPE_3__*,char const*,int ,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_incoming_add_directory(node_move_baton_t *nmb,
                                 const char *dst_relpath,
                                 svn_node_kind_t old_kind,
                                 apr_hash_t *props,
                                 const char *src_relpath,
                                 apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  const char *dst_abspath;
  svn_node_kind_t wc_kind;
  svn_skel_t *work_item = ((void*)0);
  svn_skel_t *conflict = ((void*)0);
  svn_wc_conflict_reason_t reason = svn_wc_conflict_reason_unversioned;

  SVN_ERR(mark_parent_edited(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  dst_abspath = svn_dirent_join(b->wcroot->abspath, dst_relpath, scratch_pool);


  SVN_ERR(svn_io_check_path(dst_abspath, &wc_kind, scratch_pool));

  if (wc_kind == old_kind)
    wc_kind = svn_node_none;

  if (wc_kind != svn_node_none && wc_kind != old_kind)
    {
      SVN_ERR(create_node_tree_conflict(&conflict, nmb, dst_relpath,
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
      SVN_ERR(copy_working_node(src_relpath, dst_relpath, b->wcroot,
                                scratch_pool));
      SVN_ERR(svn_wc__wq_build_dir_install(&work_item, b->db, dst_abspath,
                                           scratch_pool, scratch_pool));
    }

  SVN_ERR(update_move_list_add(b->wcroot, dst_relpath, b->db,
                               (old_kind == svn_node_none)
                                  ? svn_wc_notify_update_add
                                  : svn_wc_notify_update_replace,
                               svn_node_dir,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, work_item, scratch_pool));
  return SVN_NO_ERROR;
}
