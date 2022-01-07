
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int is_txn_root; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_FS__NOT_TXN (TYPE_1__*) ;
 int copy_helper (TYPE_1__*,char const*,TYPE_1__*,char const*,int ,int *) ;
 int * svn_error_trace (int ) ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;

__attribute__((used)) static svn_error_t *
fs_revision_link(svn_fs_root_t *from_root,
                 svn_fs_root_t *to_root,
                 const char *path,
                 apr_pool_t *pool)
{
  if (! to_root->is_txn_root)
    return SVN_FS__NOT_TXN(to_root);

  path = svn_fs__canonicalize_abspath(path, pool);
  return svn_error_trace(copy_helper(from_root, path, to_root, path,
                                     FALSE, pool));
}
