
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct ra_ev2_baton {int wc_ctx; int relpath_map; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_wc__node_get_origin (int *,int *,int *,int *,int *,int *,int *,int ,char const*,int ,int *,int *) ;
 TYPE_1__* svn_wc_get_pristine_props (int **,int ,char const*,int *,int *) ;

svn_error_t *
svn_client__ra_provide_props(apr_hash_t **props,
                             svn_revnum_t *revision,
                             void *baton,
                             const char *repos_relpath,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  struct ra_ev2_baton *reb = baton;
  const char *local_abspath;
  svn_error_t *err;

  local_abspath = svn_hash_gets(reb->relpath_map, repos_relpath);
  if (!local_abspath)
    {
      *props = ((void*)0);
      return SVN_NO_ERROR;
    }

  err = svn_wc_get_pristine_props(props, reb->wc_ctx, local_abspath,
                                  result_pool, scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      *props = ((void*)0);
      return SVN_NO_ERROR;
    }

  if (*props != ((void*)0))
    {


      SVN_ERR(svn_wc__node_get_origin(((void*)0), revision, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                      ((void*)0),
                                      reb->wc_ctx, local_abspath, FALSE,
                                      scratch_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
