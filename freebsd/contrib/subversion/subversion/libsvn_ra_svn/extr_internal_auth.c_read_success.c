
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_AUTHORIZED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_ra_svn__read_tuple (int *,int *,char*,char const**,char const**) ;

__attribute__((used)) static svn_error_t *read_success(svn_ra_svn_conn_t *conn, apr_pool_t *pool)
{
  const char *status, *arg;

  SVN_ERR(svn_ra_svn__read_tuple(conn, pool, "w(?c)", &status, &arg));
  if (strcmp(status, "failure") == 0 && arg)
    return svn_error_createf(SVN_ERR_RA_NOT_AUTHORIZED, ((void*)0),
                             _("Authentication error from server: %s"), arg);
  else if (strcmp(status, "success") != 0 || arg)
    return svn_error_create(SVN_ERR_RA_NOT_AUTHORIZED, ((void*)0),
                            _("Unexpected server response to authentication"));
  return SVN_NO_ERROR;
}
