
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int auth_baton; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
struct TYPE_5__ {int ssl_client_pw_auth_state; TYPE_1__* session; } ;
typedef TYPE_2__ svn_ra_serf__connection_t ;
typedef int svn_error_t ;
struct TYPE_6__ {char* password; } ;
typedef TYPE_3__ svn_auth_cred_ssl_client_cert_pw_t ;
typedef int apr_pool_t ;


 int * APR_SUCCESS ;
 int SVN_AUTH_CRED_SSL_CLIENT_CERT_PW ;
 int SVN_ERR (int ) ;
 int svn_auth_first_credentials (void**,int *,int ,char const*,int ,int *) ;
 int svn_auth_next_credentials (void**,int ,int *) ;

__attribute__((used)) static svn_error_t *
handle_client_cert_pw(void *data,
                      const char *cert_path,
                      const char **password,
                      apr_pool_t *pool)
{
    svn_ra_serf__connection_t *conn = data;
    svn_ra_serf__session_t *session = conn->session;
    void *creds;

    *password = ((void*)0);

    if (!conn->ssl_client_pw_auth_state)
      {
        SVN_ERR(svn_auth_first_credentials(&creds,
                                           &conn->ssl_client_pw_auth_state,
                                           SVN_AUTH_CRED_SSL_CLIENT_CERT_PW,
                                           cert_path,
                                           session->auth_baton,
                                           pool));
      }
    else
      {
        SVN_ERR(svn_auth_next_credentials(&creds,
                                          conn->ssl_client_pw_auth_state,
                                          pool));
      }

    if (creds)
      {
        svn_auth_cred_ssl_client_cert_pw_t *pw_creds;
        pw_creds = creds;
        *password = pw_creds->password;
      }

    return APR_SUCCESS;
}
