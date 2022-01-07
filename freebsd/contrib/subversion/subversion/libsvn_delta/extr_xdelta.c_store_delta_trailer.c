
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta__ops_baton_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ svn_cstring__reverse_match_length (char const*,char const*,scalar_t__) ;
 int svn_txdelta__insert_op (int *,int ,scalar_t__,scalar_t__,char const*,int *) ;
 int svn_txdelta_new ;
 int svn_txdelta_source ;

__attribute__((used)) static void
store_delta_trailer(svn_txdelta__ops_baton_t *build_baton,
                    const char *a,
                    apr_size_t asize,
                    const char *b,
                    apr_size_t bsize,
                    apr_size_t start,
                    apr_pool_t *pool)
{
  apr_size_t end_match;
  apr_size_t max_len = asize > (bsize - start) ? bsize - start : asize;
  if (max_len == 0)
    return;

  end_match = svn_cstring__reverse_match_length(a + asize, b + bsize,
                                                max_len);
  if (end_match <= 4)
    end_match = 0;

  if (bsize - start > end_match)
    svn_txdelta__insert_op(build_baton, svn_txdelta_new,
                           start, bsize - start - end_match, b + start, pool);
  if (end_match)
    svn_txdelta__insert_op(build_baton, svn_txdelta_source,
                           asize - end_match, end_match, ((void*)0), pool);
}
