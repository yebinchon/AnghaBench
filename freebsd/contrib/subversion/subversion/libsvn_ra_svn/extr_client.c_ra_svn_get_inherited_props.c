
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_8__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_INHERITED_PROPS ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int parse_iproplist (int **,int *,TYPE_2__*,int *,int *) ;
 int ra_svn_has_capability (TYPE_2__*,int *,int ,int *) ;
 char* reparent_path (TYPE_2__*,char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,int **) ;
 int svn_ra_svn__write_cmd_get_iprops (int *,int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_get_inherited_props(svn_ra_session_t *session,
                           apr_array_header_t **iprops,
                           const char *path,
                           svn_revnum_t revision,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_ra_svn__list_t *iproplist;
  svn_boolean_t iprop_capable;

  path = reparent_path(session, path, scratch_pool);
  SVN_ERR(ra_svn_has_capability(session, &iprop_capable,
                                SVN_RA_CAPABILITY_INHERITED_PROPS,
                                scratch_pool));



  if (!iprop_capable)
    return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, ((void*)0), ((void*)0));

  SVN_ERR(svn_ra_svn__write_cmd_get_iprops(conn, scratch_pool,
                                           path, revision));
  SVN_ERR(handle_auth_request(sess_baton, scratch_pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, scratch_pool, "l", &iproplist));
  SVN_ERR(parse_iproplist(iprops, iproplist, session, result_pool,
                          scratch_pool));

  return SVN_NO_ERROR;
}
