
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ kind; TYPE_4__* data_rep; TYPE_2__* prop_rep; } ;
typedef TYPE_5__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_19__ {int dir_cache; } ;
typedef TYPE_6__ svn_fs_x__data_t ;
struct TYPE_20__ {TYPE_6__* fsap_data; } ;
typedef TYPE_7__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_16__ {int change_set; } ;
struct TYPE_17__ {TYPE_3__ id; } ;
struct TYPE_14__ {int change_set; } ;
struct TYPE_15__ {TYPE_1__ id; } ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * svn_cache__set (int ,int const*,int *,int *) ;
 int * svn_fs_x__get_node_revision (TYPE_5__**,TYPE_7__*,int const*,int *,int *) ;
 scalar_t__ svn_fs_x__is_txn (int ) ;
 int svn_fs_x__path_txn_node_children (TYPE_7__*,int const*,int *,int *) ;
 int svn_fs_x__path_txn_node_props (TYPE_7__*,int const*,int *,int *) ;
 int svn_fs_x__path_txn_node_rev (TYPE_7__*,int const*,int *,int *) ;
 int * svn_io_remove_file2 (int ,int ,int *) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_x__delete_node_revision(svn_fs_t *fs,
                               const svn_fs_x__id_t *id,
                               apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev;
  SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, id, scratch_pool,
                                      scratch_pool));


  if (noderev->prop_rep
      && svn_fs_x__is_txn(noderev->prop_rep->id.change_set))
    SVN_ERR(svn_io_remove_file2(svn_fs_x__path_txn_node_props(fs, id,
                                                              scratch_pool,
                                                              scratch_pool),
                                FALSE, scratch_pool));


  if (noderev->data_rep
      && svn_fs_x__is_txn(noderev->data_rep->id.change_set)
      && noderev->kind == svn_node_dir)
    {
      svn_fs_x__data_t *ffd = fs->fsap_data;
      const svn_fs_x__id_t *key = id;

      SVN_ERR(svn_io_remove_file2(
                  svn_fs_x__path_txn_node_children(fs, id, scratch_pool,
                                                   scratch_pool),
                  FALSE, scratch_pool));


      SVN_ERR(svn_cache__set(ffd->dir_cache, key, ((void*)0), scratch_pool));
    }

  return svn_io_remove_file2(svn_fs_x__path_txn_node_rev(fs, id,
                                                         scratch_pool,
                                                         scratch_pool),
                             FALSE, scratch_pool);
}
