
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int config; int auth_baton; int callbacks_baton; int callbacks; } ;
typedef TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int ra_svn_open (TYPE_2__*,int *,char const*,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_dup_session(svn_ra_session_t *new_session,
                                       svn_ra_session_t *old_session,
                                       const char *new_session_url,
                                       apr_pool_t *result_pool,
                                       apr_pool_t *scratch_pool)
{
  svn_ra_svn__session_baton_t *old_sess = old_session->priv;

  SVN_ERR(ra_svn_open(new_session, ((void*)0), new_session_url,
                      old_sess->callbacks, old_sess->callbacks_baton,
                      old_sess->auth_baton, old_sess->config,
                      result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
