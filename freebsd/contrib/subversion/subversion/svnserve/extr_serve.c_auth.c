
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {int pool; TYPE_2__* client_info; TYPE_1__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef enum access_type { ____Placeholder_access_type } access_type ;
typedef int apr_pool_t ;
struct TYPE_6__ {char* tunnel_user; char* user; } ;
struct TYPE_5__ {int auth_access; int anon_access; scalar_t__ pwdb; } ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_pstrdup (int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_ra_svn__write_tuple (int *,int *,char*,char*,...) ;
 int * svn_ra_svn_cram_server (int *,int *,scalar_t__,char const**,int *) ;

__attribute__((used)) static svn_error_t *auth(svn_boolean_t *success,
                         svn_ra_svn_conn_t *conn,
                         const char *mech, const char *mecharg,
                         server_baton_t *b, enum access_type required,
                         svn_boolean_t needs_username,
                         apr_pool_t *scratch_pool)
{
  const char *user;
  *success = FALSE;

  if (b->repository->auth_access >= required
      && b->client_info->tunnel_user && strcmp(mech, "EXTERNAL") == 0)
    {
      if (*mecharg && strcmp(mecharg, b->client_info->tunnel_user) != 0)
        return svn_ra_svn__write_tuple(conn, scratch_pool, "w(c)", "failure",
                                       "Requested username does not match");
      b->client_info->user = b->client_info->tunnel_user;
      SVN_ERR(svn_ra_svn__write_tuple(conn, scratch_pool, "w()", "success"));
      *success = TRUE;
      return SVN_NO_ERROR;
    }

  if (b->repository->anon_access >= required
      && strcmp(mech, "ANONYMOUS") == 0 && ! needs_username)
    {
      SVN_ERR(svn_ra_svn__write_tuple(conn, scratch_pool, "w()", "success"));
      *success = TRUE;
      return SVN_NO_ERROR;
    }

  if (b->repository->auth_access >= required
      && b->repository->pwdb && strcmp(mech, "CRAM-MD5") == 0)
    {
      SVN_ERR(svn_ra_svn_cram_server(conn, scratch_pool, b->repository->pwdb,
                                     &user, success));
      b->client_info->user = apr_pstrdup(b->pool, user);
      return SVN_NO_ERROR;
    }

  return svn_ra_svn__write_tuple(conn, scratch_pool, "w(c)", "failure",
                                "Must authenticate with listed mechanism");
}
