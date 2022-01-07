
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_HASH_TERMINATOR ;
 int * SVN_NO_ERROR ;
 int svn_hash_write2 (int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
write_hash_to_stream(svn_stream_t *stream,
                     void *baton,
                     apr_pool_t *pool)
{
  apr_hash_t *hash = baton;
  SVN_ERR(svn_hash_write2(hash, stream, SVN_HASH_TERMINATOR, pool));

  return SVN_NO_ERROR;
}
