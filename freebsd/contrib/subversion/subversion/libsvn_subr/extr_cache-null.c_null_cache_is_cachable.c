
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;

__attribute__((used)) static svn_boolean_t
null_cache_is_cachable(void *cache_void,
                       apr_size_t size)
{

  return FALSE;
}
