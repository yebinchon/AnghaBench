
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int svn_dirent_dirname (char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 int svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;
 int svn_subst_read_specialfile (int **,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
detranslate_special_file(const char *src, const char *dst,
                         svn_cancel_func_t cancel_func, void *cancel_baton,
                         apr_pool_t *scratch_pool)
{
  const char *dst_tmp;
  svn_stream_t *src_stream;
  svn_stream_t *dst_stream;



  SVN_ERR(svn_stream_open_unique(&dst_stream, &dst_tmp,
                                 svn_dirent_dirname(dst, scratch_pool),
                                 svn_io_file_del_none,
                                 scratch_pool, scratch_pool));
  SVN_ERR(svn_subst_read_specialfile(&src_stream, src,
                                     scratch_pool, scratch_pool));
  SVN_ERR(svn_stream_copy3(src_stream, dst_stream,
                           cancel_func, cancel_baton, scratch_pool));


  return svn_error_trace(svn_io_file_rename2(dst_tmp, dst, FALSE, scratch_pool));
}
