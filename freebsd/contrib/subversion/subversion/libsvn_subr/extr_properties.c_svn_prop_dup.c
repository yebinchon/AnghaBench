
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_t ;
typedef int apr_pool_t ;


 int * apr_palloc (int *,int) ;
 int svn_prop__members_dup (int *,int *) ;

svn_prop_t *
svn_prop_dup(const svn_prop_t *prop, apr_pool_t *pool)
{
  svn_prop_t *new_prop = apr_palloc(pool, sizeof(*new_prop));

  *new_prop = *prop;

  svn_prop__members_dup(new_prop, pool);

  return new_prop;
}
