
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * init_revision_file (int *,int ,int *) ;
 int open_pack_or_rev_file (int *,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_x__rev_file_open_writable(svn_fs_x__revision_file_t** file,
                                 svn_fs_t* fs,
                                 svn_revnum_t rev,
                                 apr_pool_t* result_pool,
                                 apr_pool_t *scratch_pool)
{
  *file = init_revision_file(fs, rev, result_pool);
  return svn_error_trace(open_pack_or_rev_file(*file, TRUE, scratch_pool));
}
