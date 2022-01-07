
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_fs_history_location (char const**,scalar_t__*,int *,int *) ;
 int svn_fs_history_prev2 (int **,int *,int ,int *,int *) ;
 int svn_fs_node_history2 (int **,int *,char const*,int *,int *) ;
 int svn_fs_revision_root (int **,int *,scalar_t__,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
check_ancestry_of_peg_path(svn_boolean_t *is_ancestor,
                           svn_fs_t *fs,
                           const char *fs_path,
                           svn_revnum_t peg_revision,
                           svn_revnum_t future_revision,
                           apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_fs_history_t *history;
  const char *path = ((void*)0);
  svn_revnum_t revision;
  apr_pool_t *lastpool, *currpool;

  lastpool = svn_pool_create(pool);
  currpool = svn_pool_create(pool);

  SVN_ERR(svn_fs_revision_root(&root, fs, future_revision, pool));

  SVN_ERR(svn_fs_node_history2(&history, root, fs_path, lastpool, lastpool));






  fs_path = ((void*)0);

  while (1)
    {
      apr_pool_t *tmppool;

      SVN_ERR(svn_fs_history_prev2(&history, history, TRUE, currpool,
                                   lastpool));

      if (!history)
        break;

      SVN_ERR(svn_fs_history_location(&path, &revision, history, currpool));

      if (!fs_path)
        fs_path = apr_pstrdup(pool, path);

      if (revision <= peg_revision)
        break;


      svn_pool_clear(lastpool);
      tmppool = lastpool;
      lastpool = currpool;
      currpool = tmppool;
    }




  SVN_ERR_ASSERT(fs_path != ((void*)0));

  *is_ancestor = (history && strcmp(path, fs_path) == 0);

  return SVN_NO_ERROR;
}
