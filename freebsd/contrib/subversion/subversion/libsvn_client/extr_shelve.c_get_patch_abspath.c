
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,char*,char*,int ) ;
 int shelf_name_encode (char**,char const*,int *) ;
 char* svn_dirent_join (char*,char*,int *) ;
 int svn_wc__get_shelves_dir (char**,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_patch_abspath(char **patch_abspath,
                  const char *name,
                  const char *wc_root_abspath,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  char *dir;
  char *filename;

  SVN_ERR(svn_wc__get_shelves_dir(&dir, ctx->wc_ctx, wc_root_abspath,
                                  scratch_pool, scratch_pool));
  SVN_ERR(shelf_name_encode(&filename, name, scratch_pool));
  filename = apr_pstrcat(scratch_pool, filename, ".patch", SVN_VA_NULL);
  *patch_abspath = svn_dirent_join(dir, filename, result_pool);
  return SVN_NO_ERROR;
}
