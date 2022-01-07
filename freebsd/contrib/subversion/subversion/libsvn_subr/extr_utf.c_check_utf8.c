
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * invalid_utf8 (char const*,int ,int *) ;
 int svn_utf__is_valid (char const*,int ) ;

__attribute__((used)) static svn_error_t *
check_utf8(const char *data, apr_size_t len, apr_pool_t *pool)
{
  if (! svn_utf__is_valid(data, len))
    return invalid_utf8(data, len, pool);
  return SVN_NO_ERROR;
}
