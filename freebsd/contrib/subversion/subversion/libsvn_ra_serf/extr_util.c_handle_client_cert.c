
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int auth_baton; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
struct TYPE_6__ {int ssl_client_auth_state; TYPE_1__* session; } ;
typedef TYPE_2__ svn_ra_serf__connection_t ;
typedef int svn_error_t ;
struct TYPE_7__ {char* cert_file; } ;
typedef TYPE_3__ svn_auth_cred_ssl_client_cert_t ;
typedef int apr_pool_t ;


 int SVN_AUTH_CRED_SSL_CLIENT_CERT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* construct_realm (TYPE_1__*,int ) ;
 int svn_auth_first_credentials (void**,int *,int ,char const*,int ,int *) ;
 int svn_auth_next_credentials (void**,int ,int ) ;

__attribute__((used)) static svn_error_t *
handle_client_cert(void *data,
                   const char **cert_path,
                   apr_pool_t *pool)
{
    svn_ra_serf__connection_t *conn = data;
    svn_ra_serf__session_t *session = conn->session;
    const char *realm;
    void *creds;

    *cert_path = ((void*)0);

    realm = construct_realm(session, session->pool);

    if (!conn->ssl_client_auth_state)
      {
        SVN_ERR(svn_auth_first_credentials(&creds,
                                           &conn->ssl_client_auth_state,
                                           SVN_AUTH_CRED_SSL_CLIENT_CERT,
                                           realm,
                                           session->auth_baton,
                                           pool));
      }
    else
      {
        SVN_ERR(svn_auth_next_credentials(&creds,
                                          conn->ssl_client_auth_state,
                                          session->pool));
      }

    if (creds)
      {
        svn_auth_cred_ssl_client_cert_t *client_creds;
        client_creds = creds;
        *cert_path = client_creds->cert_file;
      }

    return SVN_NO_ERROR;
}
