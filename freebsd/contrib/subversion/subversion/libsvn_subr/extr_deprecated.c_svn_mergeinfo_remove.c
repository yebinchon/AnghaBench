
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int * svn_mergeinfo_remove2 (int *,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_mergeinfo_remove(svn_mergeinfo_t *mergeinfo, svn_mergeinfo_t eraser,
                     svn_mergeinfo_t whiteboard, apr_pool_t *pool)
{
  return svn_mergeinfo_remove2(mergeinfo, eraser, whiteboard, TRUE, pool,
                               pool);
}
