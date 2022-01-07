
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_pool_t ;


 int * wrap_write_stream (int **,int *,int *,int ,int *) ;

svn_stream_t *
svn_checksum__wrap_write_stream(svn_checksum_t **checksum,
                                svn_stream_t *inner_stream,
                                svn_checksum_kind_t kind,
                                apr_pool_t *pool)
{
  return wrap_write_stream(checksum, ((void*)0), inner_stream, kind, pool);
}
