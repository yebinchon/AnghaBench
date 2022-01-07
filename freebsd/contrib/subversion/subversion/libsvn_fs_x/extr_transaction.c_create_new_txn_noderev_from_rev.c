
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_10__ {int change_set; } ;
struct TYPE_8__ {scalar_t__ number; } ;
struct TYPE_7__ {scalar_t__ number; } ;
struct TYPE_9__ {TYPE_5__ noderev_id; int copyfrom_rev; int * copyfrom_path; int predecessor_count; TYPE_5__ predecessor_id; TYPE_2__ copy_id; TYPE_1__ node_id; } ;
typedef TYPE_3__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_INVALID_REVNUM ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__get_node_revision (TYPE_3__**,int *,int *,int *,int *) ;
 int svn_fs_x__init_txn_root (TYPE_5__*,int ) ;
 scalar_t__ svn_fs_x__is_txn (int ) ;
 int * svn_fs_x__put_node_revision (int *,TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
create_new_txn_noderev_from_rev(svn_fs_t *fs,
                                svn_fs_x__txn_id_t txn_id,
                                svn_fs_x__id_t *src,
                                apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev;
  SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, src, scratch_pool,
                                      scratch_pool));


  SVN_ERR_ASSERT( noderev->node_id.number == 0
                 && noderev->copy_id.number == 0);

  if (svn_fs_x__is_txn(noderev->noderev_id.change_set))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Copying from transactions not allowed"));

  noderev->predecessor_id = noderev->noderev_id;
  noderev->predecessor_count++;
  noderev->copyfrom_path = ((void*)0);
  noderev->copyfrom_rev = SVN_INVALID_REVNUM;


  svn_fs_x__init_txn_root(&noderev->noderev_id, txn_id);

  return svn_fs_x__put_node_revision(fs, noderev, scratch_pool);
}
