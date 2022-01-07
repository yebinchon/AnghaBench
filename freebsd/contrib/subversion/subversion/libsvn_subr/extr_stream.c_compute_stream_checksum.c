
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int svn_checksum_ctx_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__STREAM_CHUNK_SIZE ;
 char* apr_palloc (int *,scalar_t__) ;
 int * svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_final (int **,int *,int *) ;
 int svn_checksum_update (int *,char*,scalar_t__) ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;

__attribute__((used)) static svn_error_t *
compute_stream_checksum(svn_checksum_t **checksum,
                        svn_stream_t *stream,
                        svn_checksum_kind_t kind,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_checksum_ctx_t *ctx = svn_checksum_ctx_create(kind, scratch_pool);
  char *buf = apr_palloc(scratch_pool, SVN__STREAM_CHUNK_SIZE);

  while (1)
    {
      apr_size_t len = SVN__STREAM_CHUNK_SIZE;

      SVN_ERR(svn_stream_read_full(stream, buf, &len));

      if (len > 0)
        SVN_ERR(svn_checksum_update(ctx, buf, len));

      if (len != SVN__STREAM_CHUNK_SIZE)
          break;
    }
  SVN_ERR(svn_checksum_final(checksum, ctx, result_pool));

  return SVN_NO_ERROR;
}
