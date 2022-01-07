
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_packed__data_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_packed__data_read (int **,int *,int *,int *) ;
 int * svn_stream_from_stringbuf (int *,int *) ;
 int verify_checksum (int *,int *) ;

__attribute__((used)) static svn_error_t *
read_packed_data_checksummed(svn_packed__data_root_t **root,
                             svn_stringbuf_t *content,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;

  SVN_ERR(verify_checksum(content, scratch_pool));

  stream = svn_stream_from_stringbuf(content, scratch_pool);
  SVN_ERR(svn_packed__data_read(root, stream, result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
