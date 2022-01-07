
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;


 int APR_UINT32_MAX ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cstring_strtoui64 (scalar_t__*,char const*,int ,int ,int) ;

svn_error_t *
svn_cstring_atoui(unsigned int *n, const char *str)
{
  apr_uint64_t val;

  SVN_ERR(svn_cstring_strtoui64(&val, str, 0, APR_UINT32_MAX, 10));
  *n = (unsigned int)val;
  return SVN_NO_ERROR;
}
