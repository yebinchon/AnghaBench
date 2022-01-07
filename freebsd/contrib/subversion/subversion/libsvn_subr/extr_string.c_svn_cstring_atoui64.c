
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_uint64_t ;


 int APR_UINT64_MAX ;
 int svn_cstring_strtoui64 (int *,char const*,int ,int ,int) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_cstring_atoui64(apr_uint64_t *n, const char *str)
{
  return svn_error_trace(svn_cstring_strtoui64(n, str, 0,
                                               APR_UINT64_MAX, 10));
}
