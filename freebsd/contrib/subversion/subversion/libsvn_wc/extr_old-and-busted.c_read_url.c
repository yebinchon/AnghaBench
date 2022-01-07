
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_str (char const**,char**,char const*,int *) ;
 char* svn_uri_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
read_url(const char **result,
         char **buf, const char *end,
         int wc_format,
         apr_pool_t *pool)
{
  SVN_ERR(read_str(result, buf, end, pool));



  if (*result && **result)
    *result = svn_uri_canonicalize(*result, pool);

  return SVN_NO_ERROR;
}
