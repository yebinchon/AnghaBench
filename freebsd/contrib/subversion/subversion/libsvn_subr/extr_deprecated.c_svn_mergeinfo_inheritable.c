
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_mergeinfo_inheritable2 (int *,int ,char const*,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_mergeinfo_inheritable(svn_mergeinfo_t *output,
                          svn_mergeinfo_t mergeinfo,
                          const char *path,
                          svn_revnum_t start,
                          svn_revnum_t end,
                          apr_pool_t *pool)
{
  return svn_error_trace(svn_mergeinfo_inheritable2(output, mergeinfo, path,
                                                    start, end,
                                                    TRUE, pool, pool));
}
