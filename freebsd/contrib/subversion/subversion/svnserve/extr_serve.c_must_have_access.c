
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_repos_authz_access_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_12__ {TYPE_2__* repository; TYPE_1__* client_info; } ;
typedef TYPE_3__ server_baton_t ;
typedef enum access_type { ____Placeholder_access_type } access_type ;
typedef int apr_pool_t ;
struct TYPE_11__ {int auth_access; scalar_t__ use_sasl; scalar_t__ pwdb; } ;
struct TYPE_10__ {scalar_t__ tunnel_user; int * user; } ;


 int READ_ACCESS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_AUTHORIZED ;
 int SVN_ERR_RA_SVN_CMD_ERR ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int WRITE_ACCESS ;
 int auth_request (int *,int *,TYPE_3__*,int,int ) ;
 int create_fs_access (TYPE_3__*,int *) ;
 int error_create_and_log (int ,int *,int *,TYPE_3__*) ;
 scalar_t__ lookup_access (int *,TYPE_3__*,int,char const*,int ) ;
 int svn_authz_write ;
 int * svn_error_create (int ,int ,int *) ;
 int * trivial_auth_request (int *,int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *must_have_access(svn_ra_svn_conn_t *conn,
                                     apr_pool_t *pool,
                                     server_baton_t *b,
                                     svn_repos_authz_access_t required,
                                     const char *path,
                                     svn_boolean_t needs_username)
{
  enum access_type req = (required & svn_authz_write) ?
    WRITE_ACCESS : READ_ACCESS;




  if (lookup_access(pool, b, required, path, needs_username))
    {
      SVN_ERR(create_fs_access(b, pool));
      return trivial_auth_request(conn, pool, b);
    }







  if (b->client_info->user == ((void*)0)
      && b->repository->auth_access >= req
      && (b->client_info->tunnel_user || b->repository->pwdb
          || b->repository->use_sasl))
    SVN_ERR(auth_request(conn, pool, b, req, TRUE));



  if (! lookup_access(pool, b, required, path, needs_username))
    return svn_error_create(SVN_ERR_RA_SVN_CMD_ERR,
                            error_create_and_log(SVN_ERR_RA_NOT_AUTHORIZED,
                                                 ((void*)0), ((void*)0), b),
                            ((void*)0));


  SVN_ERR(create_fs_access(b, pool));

  return SVN_NO_ERROR;
}
