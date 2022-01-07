
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_BUILD_TARGET ;
 int SVN_VER_NUMBER ;
 char const* apr_psprintf (int *,char*,int ,int ,int,int,int) ;
 int serf_lib_version (int*,int*,int*) ;

__attribute__((used)) static const char *
get_user_agent_string(apr_pool_t *pool)
{
  int major, minor, patch;
  serf_lib_version(&major, &minor, &patch);

  return apr_psprintf(pool, "SVN/%s (%s) serf/%d.%d.%d",
                      SVN_VER_NUMBER, SVN_BUILD_TARGET,
                      major, minor, patch);
}
