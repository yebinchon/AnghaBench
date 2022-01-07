
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int svn_client_shelves_list (int **,char const*,int *,int *,int *) ;

svn_error_t *
svn_client_shelves_any(svn_boolean_t *any_shelved,
                       const char *local_abspath,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *scratch_pool)
{
  apr_hash_t *shelved_patch_infos;

  SVN_ERR(svn_client_shelves_list(&shelved_patch_infos, local_abspath,
                                  ctx, scratch_pool, scratch_pool));
  *any_shelved = apr_hash_count(shelved_patch_infos) != 0;
  return SVN_NO_ERROR;
}
