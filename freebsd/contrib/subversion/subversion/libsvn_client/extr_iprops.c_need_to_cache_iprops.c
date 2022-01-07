
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_11__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 TYPE_1__* svn_wc_check_root (scalar_t__*,scalar_t__*,int *,int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
need_to_cache_iprops(svn_boolean_t *needs_cache,
                     const char *local_abspath,
                     svn_ra_session_t *ra_session,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *scratch_pool)
{
  svn_boolean_t is_wc_root;
  svn_boolean_t is_switched;
  svn_error_t *err;

  err = svn_wc_check_root(&is_wc_root, &is_switched, ((void*)0),
                          ctx->wc_ctx, local_abspath,
                           scratch_pool);


  if (err)
    {
      if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);
          is_wc_root = FALSE;
          is_switched = FALSE;
        }
      else
        {
          return svn_error_trace(err);
        }
    }


  *needs_cache = FALSE;

  if (is_wc_root || is_switched)
    {
      const char *session_url;
      const char *session_root_url;





      SVN_ERR(svn_ra_get_session_url(ra_session, &session_url, scratch_pool));
      SVN_ERR(svn_ra_get_repos_root2(ra_session, &session_root_url,
                                     scratch_pool));

      if (strcmp(session_root_url, session_url) != 0)
        *needs_cache = TRUE;
    }

  return SVN_NO_ERROR;
}
