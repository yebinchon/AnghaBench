
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_depth_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char*,int ,int ) ;
 int svn_depth_to_word (scalar_t__) ;
 scalar_t__ svn_depth_unknown ;

__attribute__((used)) static const char *
log_depth(svn_depth_t depth, apr_pool_t *pool)
{
  if (depth == svn_depth_unknown)
    return "";
  return apr_pstrcat(pool, " depth=", svn_depth_to_word(depth), SVN_VA_NULL);
}
