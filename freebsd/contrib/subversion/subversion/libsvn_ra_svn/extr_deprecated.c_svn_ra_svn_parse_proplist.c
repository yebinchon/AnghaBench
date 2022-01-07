
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__parse_proplist (int *,int *,int **) ;
 int * svn_ra_svn__to_private_array (int const*,int *) ;

svn_error_t *
svn_ra_svn_parse_proplist(const apr_array_header_t *list,
                          apr_pool_t *pool,
                          apr_hash_t **props)
{
  svn_ra_svn__list_t *internal
    = svn_ra_svn__to_private_array(list, pool);
  return svn_error_trace(svn_ra_svn__parse_proplist(internal, pool, props));
}
