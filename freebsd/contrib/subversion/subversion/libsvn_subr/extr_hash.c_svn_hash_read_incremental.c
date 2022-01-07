
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int TRUE ;
 int * hash_read (int *,int *,char const*,int ,int *) ;

svn_error_t *svn_hash_read_incremental(apr_hash_t *hash,
                                       svn_stream_t *stream,
                                       const char *terminator,
                                       apr_pool_t *pool)
{
  return hash_read(hash, stream, terminator, TRUE, pool);
}
