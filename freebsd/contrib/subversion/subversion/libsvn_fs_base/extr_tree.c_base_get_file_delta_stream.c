
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int base_file_contents (int **,int *,char const*,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_txdelta2 (int **,int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
base_get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                           svn_fs_root_t *source_root,
                           const char *source_path,
                           svn_fs_root_t *target_root,
                           const char *target_path,
                           apr_pool_t *pool)
{
  svn_stream_t *source, *target;
  svn_txdelta_stream_t *delta_stream;


  if (source_root && source_path)
    SVN_ERR(base_file_contents(&source, source_root, source_path, pool));
  else
    source = svn_stream_empty(pool);


  SVN_ERR(base_file_contents(&target, target_root, target_path, pool));


  svn_txdelta2(&delta_stream, source, target, TRUE, pool);

  *stream_p = delta_stream;
  return SVN_NO_ERROR;
}
