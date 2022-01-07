
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_int64_t ;


 int APR_INT64_MAX ;
 int APR_INT64_MIN ;
 int svn_cstring_strtoi64 (int *,char const*,int ,int ,int) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_cstring_atoi64(apr_int64_t *n, const char *str)
{
  return svn_error_trace(svn_cstring_strtoi64(n, str, APR_INT64_MIN,
                                              APR_INT64_MAX, 10));
}
