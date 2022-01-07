
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_int64_t ;


 int APR_INT32_MAX ;
 int APR_INT32_MIN ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cstring_strtoi64 (scalar_t__*,char const*,int ,int ,int) ;

svn_error_t *
svn_cstring_atoi(int *n, const char *str)
{
  apr_int64_t val;

  SVN_ERR(svn_cstring_strtoi64(&val, str, APR_INT32_MIN, APR_INT32_MAX, 10));
  *n = (int)val;
  return SVN_NO_ERROR;
}
