
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int db; TYPE_4__* wcroot; int new_version; } ;
typedef TYPE_1__ update_local_add_baton_t ;
typedef scalar_t__ svn_wc_notify_state_t ;
struct TYPE_13__ {char const* path_in_repos; int peg_rev; scalar_t__ node_kind; } ;
typedef TYPE_2__ svn_wc_conflict_version_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_14__ {int local_relpath; TYPE_1__* b; scalar_t__ skip; } ;
typedef TYPE_3__ added_node_baton_t ;
struct TYPE_15__ {int abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_wc__conflict_create_markers (int **,int ,char const*,int *,int *,int *) ;
 int svn_wc__conflict_skel_set_op_update (int *,int *,TYPE_2__*,int *,int *) ;
 int svn_wc__db_base_get_info_internal (int *,scalar_t__*,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_4__*,int ,int *,int *) ;
 TYPE_2__* svn_wc_conflict_version_dup (int ,int *) ;
 scalar_t__ svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_update ;
 int update_incoming_add_merge_props (scalar_t__*,int **,int ,int *,int *,int ,TYPE_4__*,int *,int *) ;
 int update_local_add_mark_node_edited (TYPE_3__*,int *) ;
 int update_local_add_notify_obstructed_or_missing (TYPE_3__*,scalar_t__,scalar_t__,int *) ;
 int update_move_list_add (TYPE_4__*,int ,int ,int ,scalar_t__,int ,scalar_t__,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_update_add_merge_dirprops(added_node_baton_t *nb,
                                    apr_hash_t *working_props,
                                    apr_hash_t *base_props,
                                    apr_pool_t *scratch_pool)
{
  update_local_add_baton_t *b = nb->b;
  svn_skel_t *conflict_skel = ((void*)0);
  svn_wc_notify_state_t prop_state;
  svn_skel_t *work_items = ((void*)0);
  svn_node_kind_t kind_on_disk;
  const char *local_abspath = svn_dirent_join(b->wcroot->abspath,
                                              nb->local_relpath,
                                              scratch_pool);

  SVN_ERR(update_local_add_mark_node_edited(nb, scratch_pool));
  if (nb->skip)
    return SVN_NO_ERROR;


  SVN_ERR(svn_io_check_path(local_abspath, &kind_on_disk, scratch_pool));
  if (kind_on_disk != svn_node_dir)
    {
      SVN_ERR(update_local_add_notify_obstructed_or_missing(nb, svn_node_dir,
                                                            kind_on_disk,
                                                            scratch_pool));
      nb->skip = TRUE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(update_incoming_add_merge_props(&prop_state, &conflict_skel,
                                          nb->local_relpath,
                                          base_props, working_props,
                                          b->db, b->wcroot,
                                          scratch_pool, scratch_pool));


  if (conflict_skel && prop_state == svn_wc_notify_state_conflicted)
    {
      svn_wc_conflict_version_t *new_version;
      svn_node_kind_t new_kind;
      svn_revnum_t new_rev;
      const char *repos_relpath;

      new_version = svn_wc_conflict_version_dup(nb->b->new_version,
                                                scratch_pool);
      SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), &new_kind, &new_rev,
                                                &repos_relpath, ((void*)0), ((void*)0),
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                b->wcroot, nb->local_relpath,
                                                scratch_pool, scratch_pool));

      new_version->path_in_repos = repos_relpath;
      new_version->node_kind = new_kind;
      new_version->peg_rev = new_rev;


      SVN_ERR(svn_wc__conflict_skel_set_op_update(conflict_skel, ((void*)0),
                                                  new_version, scratch_pool,
                                                  scratch_pool));
      SVN_ERR(svn_wc__conflict_create_markers(&work_items, b->db,
                                              local_abspath,
                                              conflict_skel,
                                              scratch_pool,
                                              scratch_pool));
    }

  SVN_ERR(update_move_list_add(b->wcroot, nb->local_relpath, b->db,
                               svn_wc_notify_update_update, svn_node_dir,
                               svn_wc_notify_state_inapplicable, prop_state,
                               conflict_skel, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
