
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_pool_t ;


 int * compute_stream_checksum (int **,int *,int ,int *,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_stream_close (int *) ;

svn_error_t *
svn_stream_contents_checksum(svn_checksum_t **checksum,
                             svn_stream_t *stream,
                             svn_checksum_kind_t kind,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  err = compute_stream_checksum(checksum, stream, kind,
                                result_pool, scratch_pool);


  return svn_error_compose_create(err, svn_stream_close(stream));
}
