
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int * (* reparent ) (TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int _ (char*) ;
 int * stub1 (TYPE_2__*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 int svn_ra_get_repos_root2 (TYPE_2__*,char const**,int *) ;
 int svn_uri__is_ancestor (char const*,char const*) ;

svn_error_t *svn_ra_reparent(svn_ra_session_t *session,
                             const char *url,
                             apr_pool_t *pool)
{
  const char *repos_root;



  SVN_ERR(svn_ra_get_repos_root2(session, &repos_root, pool));
  if (! svn_uri__is_ancestor(repos_root, url))
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("'%s' isn't in the same repository as '%s'"),
                             url, repos_root);

  return session->vtable->reparent(session, url, pool);
}
