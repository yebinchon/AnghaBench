
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ svn_repos_t ;
typedef scalar_t__ svn_repos_revision_access_level_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int svn_fs_revision_proplist2 (int **,int ,int ,int ,int *,int *) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_repos_check_revision_access (scalar_t__*,TYPE_1__*,int ,int ,void*,int *) ;
 scalar_t__ svn_repos_revision_access_none ;
 scalar_t__ svn_repos_revision_access_partial ;

svn_error_t *
svn_repos_fs_revision_proplist(apr_hash_t **table_p,
                               svn_repos_t *repos,
                               svn_revnum_t rev,
                               svn_repos_authz_func_t authz_read_func,
                               void *authz_read_baton,
                               apr_pool_t *pool)
{
  svn_repos_revision_access_level_t readability;

  SVN_ERR(svn_repos_check_revision_access(&readability, repos, rev,
                                          authz_read_func, authz_read_baton,
                                          pool));

  if (readability == svn_repos_revision_access_none)
    {

      *table_p = apr_hash_make(pool);
    }
  else if (readability == svn_repos_revision_access_partial)
    {
      apr_hash_t *tmphash;
      svn_string_t *value;


      SVN_ERR(svn_fs_revision_proplist2(&tmphash, repos->fs, rev, TRUE,
                                        pool, pool));
      *table_p = apr_hash_make(pool);



      value = svn_hash_gets(tmphash, SVN_PROP_REVISION_AUTHOR);
      if (value)
        svn_hash_sets(*table_p, SVN_PROP_REVISION_AUTHOR, value);

      value = svn_hash_gets(tmphash, SVN_PROP_REVISION_DATE);
      if (value)
        svn_hash_sets(*table_p, SVN_PROP_REVISION_DATE, value);
    }
  else
    {
      SVN_ERR(svn_fs_revision_proplist2(table_p, repos->fs, rev, TRUE,
                                        pool, pool));
    }

  return SVN_NO_ERROR;
}
