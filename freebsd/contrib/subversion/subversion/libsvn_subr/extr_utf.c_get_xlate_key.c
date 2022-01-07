
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* SVN_APR_DEFAULT_CHARSET ;
 char const* SVN_APR_LOCALE_CHARSET ;
 int SVN_VA_NULL ;
 char const* apr_pstrcat (int *,char*,char const*,char*,char const*,char*,int ) ;

__attribute__((used)) static const char*
get_xlate_key(const char *topage,
              const char *frompage,
              apr_pool_t *pool)
{



  if (frompage == SVN_APR_LOCALE_CHARSET)
    frompage = "APR_LOCALE_CHARSET";
  else if (frompage == SVN_APR_DEFAULT_CHARSET)
    frompage = "APR_DEFAULT_CHARSET";

  if (topage == SVN_APR_LOCALE_CHARSET)
    topage = "APR_LOCALE_CHARSET";
  else if (topage == SVN_APR_DEFAULT_CHARSET)
    topage = "APR_DEFAULT_CHARSET";

  return apr_pstrcat(pool, "svn-utf-", frompage, "to", topage,
                     "-xlate-handle", SVN_VA_NULL);
}
