
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct shim_callbacks_baton {int wc_ctx; int relpath_map; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_wc_get_pristine_props (int **,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
fetch_props_func(apr_hash_t **props,
                 void *baton,
                 const char *path,
                 svn_revnum_t base_revision,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct shim_callbacks_baton *scb = baton;
  const char *local_abspath;

  local_abspath = svn_hash_gets(scb->relpath_map, path);
  if (!local_abspath)
    {
      *props = apr_hash_make(result_pool);
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_wc_get_pristine_props(props, scb->wc_ctx, local_abspath,
                                    result_pool, scratch_pool));

  if (!*props)
    *props = apr_hash_make(result_pool);

  return SVN_NO_ERROR;
}
