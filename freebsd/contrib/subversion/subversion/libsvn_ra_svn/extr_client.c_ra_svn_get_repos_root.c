
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* repos_root; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
struct TYPE_6__ {TYPE_1__* conn; } ;
typedef TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_3__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_RA_SVN_BAD_VERSION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_get_repos_root(svn_ra_session_t *session, const char **url,
                                          apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;

  if (!conn->repos_root)
    return svn_error_create(SVN_ERR_RA_SVN_BAD_VERSION, ((void*)0),
                            _("Server did not send repository root"));
  *url = conn->repos_root;
  return SVN_NO_ERROR;
}
