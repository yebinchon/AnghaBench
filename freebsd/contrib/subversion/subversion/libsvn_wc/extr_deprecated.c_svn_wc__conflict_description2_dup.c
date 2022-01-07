
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_description2_t ;
typedef int apr_pool_t ;


 int * svn_wc_conflict_description2_dup (int const*,int *) ;

svn_wc_conflict_description2_t *
svn_wc__conflict_description2_dup(const svn_wc_conflict_description2_t *conflict,
                                  apr_pool_t *pool)
{
  return svn_wc_conflict_description2_dup(conflict, pool);
}
