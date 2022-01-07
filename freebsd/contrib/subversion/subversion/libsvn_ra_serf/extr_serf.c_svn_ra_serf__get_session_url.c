
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_5__ {int session_url_str; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,int ) ;

__attribute__((used)) static svn_error_t *
svn_ra_serf__get_session_url(svn_ra_session_t *ra_session,
                             const char **url,
                             apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  *url = apr_pstrdup(pool, session->session_url_str);
  return SVN_NO_ERROR;
}
