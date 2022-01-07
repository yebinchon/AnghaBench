
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* vtable; int * pool; int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int (* set_svn_ra_open ) (TYPE_2__*,int ) ;int (* dup_session ) (TYPE_2__*,TYPE_2__*,char const*,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int stub1 (TYPE_2__*,TYPE_2__*,char const*,int *,int *) ;
 int stub2 (TYPE_2__*,int ) ;
 int svn_ra_get_path_relative_to_root (TYPE_2__*,char const**,char const*,int *) ;
 int svn_ra_get_session_url (TYPE_2__*,char const**,int *) ;
 int svn_ra_open4 ;

svn_error_t *
svn_ra__dup_session(svn_ra_session_t **new_session,
                    svn_ra_session_t *old_session,
                    const char *session_url,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_ra_session_t *session;

  if (session_url)
    {
      const char *dummy;


      SVN_ERR(svn_ra_get_path_relative_to_root(old_session,
                                               &dummy,
                                               session_url,
                                               scratch_pool));
    }
  else
    SVN_ERR(svn_ra_get_session_url(old_session, &session_url, scratch_pool));


  session = apr_pcalloc(result_pool, sizeof(*session));
  session->cancel_func = old_session->cancel_func;
  session->cancel_baton = old_session->cancel_baton;
  session->vtable = old_session->vtable;
  session->pool = result_pool;

  SVN_ERR(old_session->vtable->dup_session(session,
                                           old_session,
                                           session_url,
                                           result_pool,
                                           scratch_pool));

  if (session->vtable->set_svn_ra_open)
    SVN_ERR(session->vtable->set_svn_ra_open(session, svn_ra_open4));

  *new_session = session;
  return SVN_NO_ERROR;
}
