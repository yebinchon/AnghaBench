
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
struct TYPE_5__ {int * (* get_repos_root ) (TYPE_2__*,char const**,int *) ;} ;


 int * stub1 (TYPE_2__*,char const**,int *) ;

svn_error_t *svn_ra_get_repos_root(svn_ra_session_t *session,
                                   const char **url,
                                   apr_pool_t *pool)
{
  return session->vtable->get_repos_root(session, url, pool);
}
