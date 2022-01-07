
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_6__ {int * conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SVN_CAP_ATOMIC_REVPROPS ;
 scalar_t__ TRUE ;
 int handle_auth_request (TYPE_1__*,int *) ;
 int ra_svn_has_capability (TYPE_2__*,scalar_t__*,int ,int *) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*) ;
 int svn_ra_svn__write_cmd_change_rev_prop (int *,int *,int ,char const*,int const*) ;
 int svn_ra_svn__write_cmd_change_rev_prop2 (int *,int *,int ,char const*,int const*,scalar_t__,int const*) ;

__attribute__((used)) static svn_error_t *ra_svn_change_rev_prop(svn_ra_session_t *session, svn_revnum_t rev,
                                           const char *name,
                                           const svn_string_t *const *old_value_p,
                                           const svn_string_t *value,
                                           apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_boolean_t dont_care;
  const svn_string_t *old_value;
  svn_boolean_t has_atomic_revprops;

  SVN_ERR(ra_svn_has_capability(session, &has_atomic_revprops,
                                SVN_RA_SVN_CAP_ATOMIC_REVPROPS,
                                pool));

  if (old_value_p)
    {

      SVN_ERR_ASSERT(has_atomic_revprops);

      dont_care = FALSE;
      old_value = *old_value_p;
    }
  else
    {
      dont_care = TRUE;
      old_value = ((void*)0);
    }

  if (has_atomic_revprops)
    SVN_ERR(svn_ra_svn__write_cmd_change_rev_prop2(conn, pool, rev, name,
                                                   value, dont_care,
                                                   old_value));
  else
    SVN_ERR(svn_ra_svn__write_cmd_change_rev_prop(conn, pool, rev, name,
                                                  value));

  SVN_ERR(handle_auth_request(sess_baton, pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, ""));
  return SVN_NO_ERROR;
}
