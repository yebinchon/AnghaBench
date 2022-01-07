
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conn; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR_UNKNOWN_CAPABILITY ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_ra_svn_has_capability (int ,char const*) ;

__attribute__((used)) static svn_error_t *
ra_svn_has_capability(svn_ra_session_t *session,
                      svn_boolean_t *has,
                      const char *capability,
                      apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  static const char* capabilities[][2] =
  {

      {145, 135},
      {139, 129},
      {140, 130},
      {138, 128},
      {146, 136},
      {147, 137},
      {142, 132},
      {144,
                                          134},
      {143,
                                       133},
      {141, 131},

      {((void*)0), ((void*)0)}
  };
  int i;

  *has = FALSE;

  for (i = 0; capabilities[i][0]; i++)
    {
      if (strcmp(capability, capabilities[i][0]) == 0)
        {
          *has = svn_ra_svn_has_capability(sess->conn, capabilities[i][1]);
          return SVN_NO_ERROR;
        }
    }

  return svn_error_createf(SVN_ERR_UNKNOWN_CAPABILITY, ((void*)0),
                           _("Don't know anything about capability '%s'"),
                           capability);
}
