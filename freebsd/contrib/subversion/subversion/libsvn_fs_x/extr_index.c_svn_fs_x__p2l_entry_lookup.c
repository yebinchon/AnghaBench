
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_x__p2l_entry_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int p2l_entry_lookup (int **,int *,int *,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_x__p2l_entry_lookup(svn_fs_x__p2l_entry_t **entry_p,
                           svn_fs_t *fs,
                           svn_fs_x__revision_file_t *rev_file,
                           svn_revnum_t revision,
                           apr_off_t offset,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{

  SVN_ERR(p2l_entry_lookup(entry_p, rev_file, fs, revision, offset,
                           result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
