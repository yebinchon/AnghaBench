
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {char* path; } ;
typedef TYPE_1__ apr_uri_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char*) ;
 scalar_t__ apr_uri_parse (int *,char const*,TYPE_1__*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;

svn_error_t *
svn_ra_serf__uri_parse(apr_uri_t *uri,
                       const char *url_str,
                       apr_pool_t *result_pool)
{
  apr_status_t status;

  status = apr_uri_parse(result_pool, url_str, uri);
  if (status)
    {


      return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                               _("Illegal URL '%s'"),
                               url_str);
    }



  if (uri->path == ((void*)0) || uri->path[0] == '\0')
    {
      uri->path = apr_pstrdup(result_pool, "/");
    }

  return SVN_NO_ERROR;
}
