
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int apr_pool_t ;


 int strlen (char const*) ;
 int * svn_string_ncreate (char const*,int ,int *) ;

svn_string_t *
svn_string_create(const char *cstring, apr_pool_t *pool)
{
  return svn_string_ncreate(cstring, strlen(cstring), pool);
}
