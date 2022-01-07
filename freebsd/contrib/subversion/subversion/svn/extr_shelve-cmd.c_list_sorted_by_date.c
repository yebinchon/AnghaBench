
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int compare_shelved_patch_infos_by_mtime ;
 int svn_client_shelves_list (int **,char const*,int *,int *,int *) ;
 int * svn_sort__hash (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
list_sorted_by_date(apr_array_header_t **list,
                    const char *local_abspath,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *scratch_pool)
{
  apr_hash_t *shelved_patch_infos;

  SVN_ERR(svn_client_shelves_list(&shelved_patch_infos, local_abspath,
                                  ctx, scratch_pool, scratch_pool));
  *list = svn_sort__hash(shelved_patch_infos,
                         compare_shelved_patch_infos_by_mtime,
                         scratch_pool);
  return SVN_NO_ERROR;
}
