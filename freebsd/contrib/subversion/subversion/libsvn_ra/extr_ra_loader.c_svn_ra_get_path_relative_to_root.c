
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
struct TYPE_5__ {int (* get_repos_root ) (TYPE_2__*,char const**,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int stub1 (TYPE_2__*,char const**,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

svn_error_t *svn_ra_get_path_relative_to_root(svn_ra_session_t *session,
                                              const char **rel_path,
                                              const char *url,
                                              apr_pool_t *pool)
{
  const char *root_url;

  SVN_ERR(session->vtable->get_repos_root(session, &root_url, pool));
  *rel_path = svn_uri_skip_ancestor(root_url, url, pool);
  if (! *rel_path)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("'%s' isn't a child of repository root "
                               "URL '%s'"),
                             url, root_url);
  return SVN_NO_ERROR;
}
