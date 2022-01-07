
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct edit_baton {int * root; int txn_pool; int txn; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_txn_root (int **,int ,int ) ;

__attribute__((used)) static svn_error_t *
get_root(svn_fs_root_t **root,
         struct edit_baton *eb)
{
  if (eb->root == ((void*)0))
    SVN_ERR(svn_fs_txn_root(&eb->root, eb->txn, eb->txn_pool));
  *root = eb->root;
  return SVN_NO_ERROR;
}
