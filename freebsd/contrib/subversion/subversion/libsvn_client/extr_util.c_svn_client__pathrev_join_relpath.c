
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int url; int rev; int repos_uuid; int repos_root_url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 TYPE_1__* svn_client__pathrev_create (int ,int ,int ,int ,int *) ;
 int svn_path_url_add_component2 (int ,char const*,int *) ;

svn_client__pathrev_t *
svn_client__pathrev_join_relpath(const svn_client__pathrev_t *pathrev,
                                 const char *relpath,
                                 apr_pool_t *result_pool)
{
  return svn_client__pathrev_create(
           pathrev->repos_root_url, pathrev->repos_uuid, pathrev->rev,
           svn_path_url_add_component2(pathrev->url, relpath, result_pool),
           result_pool);
}
