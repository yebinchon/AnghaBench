
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;



__attribute__((used)) static const char * const *
ra_svn_get_schemes(apr_pool_t *pool)
{
  static const char *schemes[] = { "svn", ((void*)0) };

  return schemes;
}
