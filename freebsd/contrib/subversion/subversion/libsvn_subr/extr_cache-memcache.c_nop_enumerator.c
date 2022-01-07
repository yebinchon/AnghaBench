
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int TRUE ;

__attribute__((used)) static svn_boolean_t
nop_enumerator(const char *name,
               const char *value,
               void *baton,
               apr_pool_t *pool)
{
  return TRUE;
}
