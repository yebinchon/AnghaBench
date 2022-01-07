
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int txn; int rev_id; int fs; scalar_t__ is_revision; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_txn_root (int **,int ,int *) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_root(svn_fs_root_t **root,
         svnlook_ctxt_t *c,
         apr_pool_t *pool)
{

  if (c->is_revision)
    {


      if (! SVN_IS_VALID_REVNUM(c->rev_id))
        SVN_ERR(svn_fs_youngest_rev(&(c->rev_id), c->fs, pool));

      SVN_ERR(svn_fs_revision_root(root, c->fs, c->rev_id, pool));
    }
  else
    {
      SVN_ERR(svn_fs_txn_root(root, c->txn, pool));
    }

  return SVN_NO_ERROR;
}
