
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef scalar_t__ svn_fs_node_relation_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CONFLICT ;
 int SVN_ERR_FS_OUT_OF_DATE ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_close_root (int *) ;
 int svn_fs_node_created_rev (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_node_relation (scalar_t__*,int *,char const*,int *,char const*,int *) ;
 scalar_t__ svn_fs_node_unchanged ;
 int svn_fs_revision_root (int **,int ,scalar_t__,int *) ;
 int svn_fs_root_fs (int *) ;

__attribute__((used)) static svn_error_t *
can_modify(svn_fs_root_t *txn_root,
           const char *fspath,
           svn_revnum_t revision,
           apr_pool_t *scratch_pool)
{
  svn_revnum_t created_rev;



  SVN_ERR(svn_fs_node_created_rev(&created_rev, txn_root, fspath,
                                  scratch_pool));
  if (!SVN_IS_VALID_REVNUM(created_rev))
    return SVN_NO_ERROR;
  if (!SVN_IS_VALID_REVNUM(revision))
    return SVN_NO_ERROR;
  if (revision < created_rev)
    {


      return svn_error_createf(SVN_ERR_FS_OUT_OF_DATE, ((void*)0),
                               _("'%s' is out of date; try updating"),
                               fspath);
    }

  if (revision > created_rev)
    {
      svn_fs_root_t *rev_root;
      svn_fs_node_relation_t relation;


      SVN_ERR(svn_fs_revision_root(&rev_root, svn_fs_root_fs(txn_root),
                                   revision, scratch_pool));
      SVN_ERR(svn_fs_node_relation(&relation, txn_root, fspath, rev_root,
                                   fspath, scratch_pool));
      svn_fs_close_root(rev_root);


      if (relation != svn_fs_node_unchanged)
        {



          return svn_error_createf(SVN_ERR_FS_CONFLICT, ((void*)0),
                                   _("'%s' has been modified since the "
                                     "commit began (restart the commit)"),
                                   fspath);
        }
    }

  return SVN_NO_ERROR;
}
