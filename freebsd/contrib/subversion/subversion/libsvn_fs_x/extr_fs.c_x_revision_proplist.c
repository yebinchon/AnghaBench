
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__get_revision_proplist (int **,int *,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
x_revision_proplist(apr_hash_t **proplist_p,
                    svn_fs_t *fs,
                    svn_revnum_t rev,
                    svn_boolean_t refresh,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_fs_x__get_revision_proplist(proplist_p, fs, rev, FALSE,
                                          refresh, result_pool,
                                          scratch_pool));

  return SVN_NO_ERROR;
}
