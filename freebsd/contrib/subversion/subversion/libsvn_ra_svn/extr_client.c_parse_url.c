
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_uri_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_uri_parse (int *,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

__attribute__((used)) static svn_error_t *parse_url(const char *url, apr_uri_t *uri,
                              apr_pool_t *pool)
{
  apr_status_t apr_err;

  apr_err = apr_uri_parse(pool, url, uri);

  if (apr_err != 0)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("Illegal svn repository URL '%s'"), url);

  return SVN_NO_ERROR;
}
