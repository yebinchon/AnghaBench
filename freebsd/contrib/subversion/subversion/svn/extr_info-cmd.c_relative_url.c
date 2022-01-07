
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int URL; int repos_root_URL; } ;
typedef TYPE_1__ svn_client_info2_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char*,int ,int ) ;
 int svn_path_uri_encode (int ,int *) ;
 int svn_uri_skip_ancestor (int ,int ,int *) ;

__attribute__((used)) static const char*
relative_url(const svn_client_info2_t *info, apr_pool_t *pool)
{
  return apr_pstrcat(pool, "^/",
                     svn_path_uri_encode(
                         svn_uri_skip_ancestor(info->repos_root_URL,
                                               info->URL, pool),
                         pool), SVN_VA_NULL);
}
