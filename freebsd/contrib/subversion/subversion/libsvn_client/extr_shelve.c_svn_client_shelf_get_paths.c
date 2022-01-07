
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int new_filename; int old_filename; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_patch_file_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int apr_pstrdup (int *,int ) ;
 int get_patch_abspath (char**,char const*,char const*,int *,int *,int *) ;
 int svn_client_get_wc_root (char const**,char const*,int *,int *,int *) ;
 int svn_diff_close_patch_file (int *,int *) ;
 int svn_diff_open_patch_file (int **,char*,int *) ;
 int svn_diff_parse_next_patch (TYPE_1__**,int *,int ,int ,int *,int *) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_client_shelf_get_paths(apr_hash_t **affected_paths,
                           const char *name,
                           const char *local_abspath,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *wc_root_abspath;
  char *patch_abspath;
  svn_patch_file_t *patch_file;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_t *paths = apr_hash_make(result_pool);

  SVN_ERR(svn_client_get_wc_root(&wc_root_abspath,
                                 local_abspath, ctx, scratch_pool, scratch_pool));
  SVN_ERR(get_patch_abspath(&patch_abspath, name, wc_root_abspath,
                            ctx, scratch_pool, scratch_pool));
  SVN_ERR(svn_diff_open_patch_file(&patch_file, patch_abspath, result_pool));

  while (1)
    {
      svn_patch_t *patch;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_diff_parse_next_patch(&patch, patch_file,
                                        FALSE ,
                                        FALSE ,
                                        iterpool, iterpool));
      if (! patch)
        break;
      svn_hash_sets(paths,
                    apr_pstrdup(result_pool, patch->old_filename),
                    apr_pstrdup(result_pool, patch->new_filename));
    }
  SVN_ERR(svn_diff_close_patch_file(patch_file, iterpool));
  svn_pool_destroy(iterpool);

  *affected_paths = paths;
  return SVN_NO_ERROR;
}
