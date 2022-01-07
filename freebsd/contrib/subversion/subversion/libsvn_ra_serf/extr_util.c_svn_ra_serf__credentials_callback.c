
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int auth_attempts; int proxy_auth_attempts; int proxy_username; int proxy_password; int pool; int auth_state; int auth_baton; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
struct TYPE_13__ {TYPE_1__* conn; TYPE_2__* session; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct TYPE_15__ {int password; int username; } ;
typedef TYPE_5__ svn_auth_cred_simple_t ;
typedef int serf_request_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int last_status_code; } ;


 int APR_SUCCESS ;
 int SVN_AUTH_CRED_SIMPLE ;
 int SVN_ERR_AUTHN_FAILED ;
 int _ (char*) ;
 char* apr_pstrdup (int *,int ) ;
 int save_error (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* svn_auth_first_credentials (void**,int *,int ,char const*,int ,int ) ;
 TYPE_4__* svn_auth_next_credentials (void**,int ,int ) ;
 TYPE_4__* svn_error_create (int ,int *,int ) ;

apr_status_t
svn_ra_serf__credentials_callback(char **username, char **password,
                                  serf_request_t *request, void *baton,
                                  int code, const char *authn_type,
                                  const char *realm,
                                  apr_pool_t *pool)
{
  svn_ra_serf__handler_t *handler = baton;
  svn_ra_serf__session_t *session = handler->session;
  void *creds;
  svn_auth_cred_simple_t *simple_creds;
  svn_error_t *err;

  if (code == 401)
    {




      if (!session->auth_state)
        {
          err = svn_auth_first_credentials(&creds,
                                           &session->auth_state,
                                           SVN_AUTH_CRED_SIMPLE,
                                           realm,
                                           session->auth_baton,
                                           session->pool);
        }
      else
        {
          err = svn_auth_next_credentials(&creds,
                                          session->auth_state,
                                          session->pool);
        }

      if (err)
        {
          (void) save_error(session, err);
          return err->apr_err;
        }

      session->auth_attempts++;

      if (!creds || session->auth_attempts > 4)
        {

          (void) save_error(session,
                            svn_error_create(
                              SVN_ERR_AUTHN_FAILED, ((void*)0),
                              _("No more credentials or we tried too many "
                                "times.\nAuthentication failed")));
          return SVN_ERR_AUTHN_FAILED;
        }

      simple_creds = creds;
      *username = apr_pstrdup(pool, simple_creds->username);
      *password = apr_pstrdup(pool, simple_creds->password);
    }
  else
    {
      *username = apr_pstrdup(pool, session->proxy_username);
      *password = apr_pstrdup(pool, session->proxy_password);

      session->proxy_auth_attempts++;

      if (!session->proxy_username || session->proxy_auth_attempts > 4)
        {

          (void) save_error(session,
                            svn_error_create(
                              SVN_ERR_AUTHN_FAILED, ((void*)0),
                              _("Proxy authentication failed")));
          return SVN_ERR_AUTHN_FAILED;
        }
    }

  handler->conn->last_status_code = code;

  return APR_SUCCESS;
}
