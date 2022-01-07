
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int prop_rep; int data_rep; int is_fresh_txn_root; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__fixup_expanded_size (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
fixup_node_revision(svn_fs_t *fs,
                    node_revision_t *noderev,
                    apr_pool_t *scratch_pool)
{

  noderev->is_fresh_txn_root = FALSE;


  SVN_ERR(svn_fs_fs__fixup_expanded_size(fs, noderev->data_rep,
                                         scratch_pool));
  SVN_ERR(svn_fs_fs__fixup_expanded_size(fs, noderev->prop_rep,
                                         scratch_pool));

  return SVN_NO_ERROR;
}
