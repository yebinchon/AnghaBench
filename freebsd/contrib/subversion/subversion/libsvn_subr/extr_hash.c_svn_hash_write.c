
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_HASH_TERMINATOR ;
 int TRUE ;
 int * hash_write (int *,int *,int ,int ,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_hash_write(apr_hash_t *hash, apr_file_t *destfile, apr_pool_t *pool)
{
  return hash_write(hash, ((void*)0), svn_stream_from_aprfile2(destfile, TRUE, pool),
                    SVN_HASH_TERMINATOR, pool);
}
