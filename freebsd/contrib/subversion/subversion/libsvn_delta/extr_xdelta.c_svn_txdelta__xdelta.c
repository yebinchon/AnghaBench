
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta__ops_baton_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int assert (int) ;
 int compute_delta (int *,char const*,scalar_t__,char const*,scalar_t__,int *) ;

void
svn_txdelta__xdelta(svn_txdelta__ops_baton_t *build_baton,
                    const char *data,
                    apr_size_t source_len,
                    apr_size_t target_len,
                    apr_pool_t *pool)
{



  assert(source_len != 0);
  compute_delta(build_baton, data, source_len,
                data + source_len, target_len,
                pool);
}
