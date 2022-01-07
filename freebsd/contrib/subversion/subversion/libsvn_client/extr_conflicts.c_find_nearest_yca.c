
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* find_yca (int **,char const*,int ,char const*,int ,char const*,char const*,int *,int *,int *,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_path_component_count (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_dirname (char const*,int *) ;

__attribute__((used)) static svn_error_t *
find_nearest_yca(svn_client__pathrev_t **yca_locp,
                 const char *repos_relpath1,
                 svn_revnum_t peg_rev1,
                 const char *repos_relpath2,
                 svn_revnum_t peg_rev2,
                 const char *repos_root_url,
                 const char *repos_uuid,
                 svn_ra_session_t *ra_session,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *yca_loc;
  svn_error_t *err;
  apr_pool_t *iterpool;
  const char *p1, *p2;
  apr_size_t c1, c2;

  *yca_locp = ((void*)0);

  iterpool = svn_pool_create(scratch_pool);

  p1 = repos_relpath1;
  c1 = svn_path_component_count(repos_relpath1);
  while (c1--)
    {
      svn_pool_clear(iterpool);

      p2 = repos_relpath2;
      c2 = svn_path_component_count(repos_relpath2);
      while (c2--)
        {
          err = find_yca(&yca_loc, p1, peg_rev1, p2, peg_rev2,
                         repos_root_url, repos_uuid, ra_session, ctx,
                         result_pool, iterpool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
                {
                  svn_error_clear(err);
                  yca_loc = ((void*)0);
                }
              else
                return svn_error_trace(err);
            }

          if (yca_loc)
            {
              *yca_locp = yca_loc;
              svn_pool_destroy(iterpool);
              return SVN_NO_ERROR;
            }

          p2 = svn_relpath_dirname(p2, scratch_pool);
        }

      p1 = svn_relpath_dirname(p1, scratch_pool);
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
