
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_4__ {int auth_baton; scalar_t__ is_tunneled; int realm_prefix; int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_auth_iterstate_t ;
struct TYPE_5__ {char* username; char* password; } ;
typedef TYPE_2__ svn_auth_cred_simple_t ;
typedef int apr_pool_t ;


 int SVN_AUTH_CRED_SIMPLE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_AUTHORIZED ;
 int SVN_ERR_RA_SVN_NO_MECHANISMS ;
 int * SVN_NO_ERROR ;
 int * _ (char*) ;
 char* apr_psprintf (int *,char*,int ,char const*) ;
 int * read_success (int *,int *) ;
 int svn_auth_first_credentials (void**,int **,int ,char const*,int ,int *) ;
 int svn_auth_next_credentials (void**,int *,int *) ;
 int svn_auth_save_credentials (int *,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int *,char const*) ;
 int svn_ra_svn__auth_response (int *,int *,char*,char*) ;
 int svn_ra_svn__cram_client (int *,int *,char const*,char const*,char const**) ;
 scalar_t__ svn_ra_svn__find_mech (int const*,char*) ;

svn_error_t *
svn_ra_svn__do_internal_auth(svn_ra_svn__session_baton_t *sess,
                             const svn_ra_svn__list_t *mechlist,
                             const char *realm, apr_pool_t *pool)
{
  svn_ra_svn_conn_t *conn = sess->conn;
  const char *realmstring, *user, *password, *msg;
  svn_auth_iterstate_t *iterstate;
  void *creds;

  realmstring = apr_psprintf(pool, "%s %s", sess->realm_prefix, realm);

  if (sess->is_tunneled && svn_ra_svn__find_mech(mechlist, "EXTERNAL"))
    {


      SVN_ERR(svn_ra_svn__auth_response(conn, pool, "EXTERNAL", ""));
      return read_success(conn, pool);
    }
  else if (svn_ra_svn__find_mech(mechlist, "ANONYMOUS"))
    {
      SVN_ERR(svn_ra_svn__auth_response(conn, pool, "ANONYMOUS", ""));
      return read_success(conn, pool);
    }
  else if (svn_ra_svn__find_mech(mechlist, "CRAM-MD5"))
    {
      SVN_ERR(svn_auth_first_credentials(&creds, &iterstate,
                                         SVN_AUTH_CRED_SIMPLE, realmstring,
                                         sess->auth_baton, pool));
      if (!creds)
        return svn_error_create(SVN_ERR_RA_NOT_AUTHORIZED, ((void*)0),
                                _("Can't get password"));
      while (creds)
        {
          user = ((svn_auth_cred_simple_t *) creds)->username;
          password = ((svn_auth_cred_simple_t *) creds)->password;
          SVN_ERR(svn_ra_svn__auth_response(conn, pool, "CRAM-MD5", ((void*)0)));
          SVN_ERR(svn_ra_svn__cram_client(conn, pool, user, password, &msg));
          if (!msg)
            break;
          SVN_ERR(svn_auth_next_credentials(&creds, iterstate, pool));
        }
      if (!creds)
        return svn_error_createf(SVN_ERR_RA_NOT_AUTHORIZED, ((void*)0),
                                _("Authentication error from server: %s"),
                                msg);
      SVN_ERR(svn_auth_save_credentials(iterstate, pool));
      return SVN_NO_ERROR;
    }
  else
    return svn_error_create(SVN_ERR_RA_SVN_NO_MECHANISMS, ((void*)0), ((void*)0));
}
