
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 int * svn_wc_diff4 (int *,char const*,int const*,void*,int ,int ,int *,int *) ;

svn_error_t *
svn_wc_diff3(svn_wc_adm_access_t *anchor,
             const char *target,
             const svn_wc_diff_callbacks2_t *callbacks,
             void *callback_baton,
             svn_boolean_t recurse,
             svn_boolean_t ignore_ancestry,
             apr_pool_t *pool)
{
  return svn_wc_diff4(anchor, target, callbacks, callback_baton,
                      SVN_DEPTH_INFINITY_OR_FILES(recurse), ignore_ancestry,
                      ((void*)0), pool);
}
