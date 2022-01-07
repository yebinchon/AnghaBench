
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_session_url ) (TYPE_2__*,char const**,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int stub1 (TYPE_2__*,char const**,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

svn_error_t *svn_ra_get_path_relative_to_session(svn_ra_session_t *session,
                                                 const char **rel_path,
                                                 const char *url,
                                                 apr_pool_t *pool)
{
  const char *sess_url;

  SVN_ERR(session->vtable->get_session_url(session, &sess_url, pool));
  *rel_path = svn_uri_skip_ancestor(sess_url, url, pool);
  if (! *rel_path)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("'%s' isn't a child of session URL '%s'"),
                             url, sess_url);
  return SVN_NO_ERROR;
}
