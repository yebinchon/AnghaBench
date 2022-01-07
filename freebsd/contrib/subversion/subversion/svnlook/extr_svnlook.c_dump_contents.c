
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_file_contents (int **,int *,char const*,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_copy3 (int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
dump_contents(svn_stream_t *stream,
              svn_fs_root_t *root,
              const char *path ,
              apr_pool_t *pool)
{
  if (root == ((void*)0))
    SVN_ERR(svn_stream_close(stream));
  else
    {
      svn_stream_t *contents;


      SVN_ERR(svn_fs_file_contents(&contents, root, path, pool));
      SVN_ERR(svn_stream_copy3(contents, stream, ((void*)0), ((void*)0), pool));
    }

  return SVN_NO_ERROR;
}
