
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_9__ {TYPE_1__* b; int local_relpath; void* skip; } ;
typedef TYPE_2__ added_node_baton_t ;
struct TYPE_10__ {int abspath; } ;
struct TYPE_8__ {int db; TYPE_3__* wcroot; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int mark_update_add_add_tree_conflict (TYPE_2__*,scalar_t__,scalar_t__,int ,int *,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_wc_conflict_reason_added ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_add ;
 int update_local_add_mark_parent_edited (TYPE_2__*,int *) ;
 int update_local_add_notify_obstructed_or_missing (TYPE_2__*,scalar_t__,scalar_t__,int *) ;
 int update_move_list_add (TYPE_3__*,int ,int ,int ,scalar_t__,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_update_add_new_directory(added_node_baton_t *nb,
                                   svn_node_kind_t base_kind,
                                   apr_hash_t *base_props,
                                   apr_hash_t *working_props,
                                   apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  svn_node_kind_t kind_on_disk;

  SVN_ERR(update_local_add_mark_parent_edited(nb, scratch_pool));
  if (nb->skip)
    return SVN_NO_ERROR;

  if (base_kind != svn_node_none)
    {
      SVN_ERR(mark_update_add_add_tree_conflict(nb, base_kind, svn_node_dir,
                                                svn_wc_conflict_reason_added,
                                                scratch_pool, scratch_pool));
      nb->skip = TRUE;
      return SVN_NO_ERROR;
    }


  local_abspath = svn_dirent_join(nb->b->wcroot->abspath, nb->local_relpath,
                                  scratch_pool);
  SVN_ERR(svn_io_check_path(local_abspath, &kind_on_disk, scratch_pool));
  if (kind_on_disk != svn_node_dir)
    {
      SVN_ERR(update_local_add_notify_obstructed_or_missing(nb, svn_node_dir,
                                                            kind_on_disk,
                                                            scratch_pool));
      nb->skip = TRUE;
      return SVN_NO_ERROR;
    }



  SVN_ERR(update_move_list_add(nb->b->wcroot, nb->local_relpath, nb->b->db,
                               svn_wc_notify_update_add, svn_node_dir,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               ((void*)0), ((void*)0), scratch_pool));
  return SVN_NO_ERROR;
}
