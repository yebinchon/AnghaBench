
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int close_handler_fnv1a_32x4 ;
 int svn_checksum_fnv1a_32x4 ;
 int svn_stream_set_close (int *,int ) ;
 int * wrap_write_stream (int *,unsigned char*,int *,int ,int *) ;

svn_stream_t *
svn_checksum__wrap_write_stream_fnv1a_32x4(apr_uint32_t *digest,
                                           svn_stream_t *inner_stream,
                                           apr_pool_t *pool)
{
  svn_stream_t *result
    = wrap_write_stream(((void*)0), (unsigned char *)digest, inner_stream,
                        svn_checksum_fnv1a_32x4, pool);
  svn_stream_set_close(result, close_handler_fnv1a_32x4);

  return result;
}
