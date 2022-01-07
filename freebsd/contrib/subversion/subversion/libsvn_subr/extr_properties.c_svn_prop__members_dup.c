
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; scalar_t__ name; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int apr_pool_t ;


 scalar_t__ apr_pstrdup (int *,scalar_t__) ;
 scalar_t__ svn_string_dup (scalar_t__,int *) ;

__attribute__((used)) static void
svn_prop__members_dup(svn_prop_t *prop, apr_pool_t *pool)
{
  if (prop->name)
    prop->name = apr_pstrdup(pool, prop->name);
  if (prop->value)
    prop->value = svn_string_dup(prop->value, pool);
}
