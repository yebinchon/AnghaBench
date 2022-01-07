
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_OUT_OF_DATE ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int strlen (char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_node_created_rev (int *,int *,char const*,int *) ;
 char* svn_fspath__dirname (char const*,int *) ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
can_create(svn_fs_root_t *txn_root,
           const char *fspath,
           apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *cur_fspath;

  SVN_ERR(svn_fs_check_path(&kind, txn_root, fspath, scratch_pool));
  if (kind == svn_node_none)
    return SVN_NO_ERROR;
  for (cur_fspath = fspath;
       strlen(cur_fspath) > 1;
       cur_fspath = svn_fspath__dirname(cur_fspath, scratch_pool))
    {
      svn_revnum_t created_rev;

      SVN_ERR(svn_fs_node_created_rev(&created_rev, txn_root, cur_fspath,
                                      scratch_pool));
      if (!SVN_IS_VALID_REVNUM(created_rev))
        {





          return SVN_NO_ERROR;
        }
    }

  return svn_error_createf(SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
                           _("'%s' already exists, so may be out"
                             " of date; try updating"),
                           fspath);
}
