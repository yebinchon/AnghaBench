
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_apply_text (int **,int *,char const*,int *,int *) ;
 int svn_stream_copy3 (int *,int *,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
set_text(svn_fs_root_t *root,
         const char *fspath,
         const svn_checksum_t *checksum,
         svn_stream_t *contents,
         svn_cancel_func_t cancel_func,
         void *cancel_baton,
         apr_pool_t *scratch_pool)
{
  svn_stream_t *fs_contents;




  SVN_ERR(svn_fs_apply_text(&fs_contents, root, fspath,
                            ((void*)0) ,
                            scratch_pool));
  SVN_ERR(svn_stream_copy3(contents, fs_contents,
                           cancel_func, cancel_baton,
                           scratch_pool));

  return SVN_NO_ERROR;
}
