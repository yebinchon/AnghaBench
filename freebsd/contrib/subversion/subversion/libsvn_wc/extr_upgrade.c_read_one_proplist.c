
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
 int * apr_hash_make (int *) ;
 int svn_hash_read2 (int *,int *,int ,int *) ;
 int svn_hash_sets (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
read_one_proplist(apr_hash_t *all_wcprops,
                  const char *name,
                  svn_stream_t *stream,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_hash_t *proplist;

  proplist = apr_hash_make(result_pool);
  SVN_ERR(svn_hash_read2(proplist, stream, SVN_HASH_TERMINATOR, result_pool));
  svn_hash_sets(all_wcprops, name, proplist);

  return SVN_NO_ERROR;
}
