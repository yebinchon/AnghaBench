
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * hash_write (int *,int *,int *,char const*,int *) ;

svn_error_t *
svn_hash_write_incremental(apr_hash_t *hash, apr_hash_t *oldhash,
                           svn_stream_t *stream, const char *terminator,
                           apr_pool_t *pool)
{
  SVN_ERR_ASSERT(oldhash != ((void*)0));
  return hash_write(hash, oldhash, stream, terminator, pool);
}
