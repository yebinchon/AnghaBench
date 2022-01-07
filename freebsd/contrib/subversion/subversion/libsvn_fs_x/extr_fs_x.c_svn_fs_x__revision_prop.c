
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_x__get_revision_proplist (int **,int *,int ,int ,int ,int *,int *) ;
 int svn_hash_gets (int *,char const*) ;
 int * svn_string_dup (int ,int *) ;

svn_error_t *
svn_fs_x__revision_prop(svn_string_t **value_p,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        const char *propname,
                        svn_boolean_t refresh,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  apr_hash_t *table;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));
  SVN_ERR(svn_fs_x__get_revision_proplist(&table, fs, rev, FALSE, refresh,
                                          scratch_pool, scratch_pool));

  *value_p = svn_string_dup(svn_hash_gets(table, propname), result_pool);

  return SVN_NO_ERROR;
}
