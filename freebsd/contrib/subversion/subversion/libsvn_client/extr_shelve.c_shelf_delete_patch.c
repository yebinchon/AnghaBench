
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int TRUE ;
 char* apr_pstrcat (int *,char*,char*,int ) ;
 int get_patch_abspath (char**,char const*,char const*,int *,int *,int *) ;
 int svn_io_file_rename2 (char*,char*,int ,int *) ;
 int svn_io_remove_file2 (char*,int ,int *) ;

__attribute__((used)) static svn_error_t *
shelf_delete_patch(const char *name,
                   const char *wc_root_abspath,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  char *patch_abspath, *to_abspath;

  SVN_ERR(get_patch_abspath(&patch_abspath, name, wc_root_abspath,
                            ctx, scratch_pool, scratch_pool));
  to_abspath = apr_pstrcat(scratch_pool, patch_abspath, ".bak", SVN_VA_NULL);


  SVN_ERR(svn_io_remove_file2(to_abspath, TRUE ,
                              scratch_pool));


  SVN_ERR(svn_io_file_rename2(patch_abspath, to_abspath, FALSE ,
                              scratch_pool));
  return SVN_NO_ERROR;
}
