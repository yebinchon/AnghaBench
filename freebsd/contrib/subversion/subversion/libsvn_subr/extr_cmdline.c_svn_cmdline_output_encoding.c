
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* SVN_APR_LOCALE_CHARSET ;
 char const* apr_pstrdup (int *,scalar_t__) ;
 scalar_t__ output_encoding ;

const char *svn_cmdline_output_encoding(apr_pool_t *pool)
{





  return SVN_APR_LOCALE_CHARSET;
}
