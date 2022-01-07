
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rev; int url; int repos_root_url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,char const*,int ) ;
 char* svn_uri_skip_ancestor (int ,int ,int *) ;

__attribute__((used)) static const char *
pathrev_str(const svn_client__pathrev_t *pathrev,
            apr_pool_t *pool)
{
  const char *rrpath
    = svn_uri_skip_ancestor(pathrev->repos_root_url, pathrev->url, pool);

  return apr_psprintf(pool, "^/%s@%ld", rrpath, pathrev->rev);
}
