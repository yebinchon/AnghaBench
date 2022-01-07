
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int unparse_dir_entries (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
write_directory_to_stream(svn_stream_t *stream,
                          void *baton,
                          apr_pool_t *pool)
{
  apr_array_header_t *dir = baton;
  SVN_ERR(unparse_dir_entries(dir, stream, pool));

  return SVN_NO_ERROR;
}
