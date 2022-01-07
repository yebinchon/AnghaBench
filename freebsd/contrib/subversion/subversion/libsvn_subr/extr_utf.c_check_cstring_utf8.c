
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * invalid_utf8 (char const*,int ,int *) ;
 int strlen (char const*) ;
 int svn_utf__cstring_is_valid (char const*) ;

__attribute__((used)) static svn_error_t *
check_cstring_utf8(const char *data, apr_pool_t *pool)
{

  if (! svn_utf__cstring_is_valid(data))
    return invalid_utf8(data, strlen(data), pool);
  return SVN_NO_ERROR;
}
