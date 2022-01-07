
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int me_resource; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_1__*) ;
 char* apr_pstrdup (int *,int ) ;
 int svn_ra_serf__discover_vcc (char const**,TYPE_1__*,int *) ;

svn_error_t *
svn_ra_serf__report_resource(const char **report_target,
                             svn_ra_serf__session_t *session,
                             apr_pool_t *pool)
{


  if (SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session))
    *report_target = apr_pstrdup(pool, session->me_resource);


  else
    SVN_ERR(svn_ra_serf__discover_vcc(report_target, session, pool));

  return SVN_NO_ERROR;
}
