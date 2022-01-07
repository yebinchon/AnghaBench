
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_x__index_info_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__close_revision_file (int *) ;
 int svn_fs_x__rev_file_init (int **,int *,int ,int *) ;
 int svn_fs_x__rev_file_l2p_info (int *,int *) ;
 int svn_fs_x__rev_file_p2l_info (int *,int *) ;
 int verify_index_checksum (int *,char*,int *,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
verify_index_checksums(svn_fs_t *fs,
                       svn_revnum_t start,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_fs_x__revision_file_t *rev_file;
  svn_fs_x__index_info_t l2p_index_info;
  svn_fs_x__index_info_t p2l_index_info;


  SVN_ERR(svn_fs_x__rev_file_init(&rev_file, fs, start, scratch_pool));
  SVN_ERR(svn_fs_x__rev_file_l2p_info(&l2p_index_info, rev_file));
  SVN_ERR(svn_fs_x__rev_file_p2l_info(&p2l_index_info, rev_file));


  SVN_ERR(verify_index_checksum(rev_file, "L2P index", &l2p_index_info,
                                cancel_func, cancel_baton, scratch_pool));
  SVN_ERR(verify_index_checksum(rev_file, "P2L index", &p2l_index_info,
                                cancel_func, cancel_baton, scratch_pool));


  SVN_ERR(svn_fs_x__close_revision_file(rev_file));

  return SVN_NO_ERROR;
}
