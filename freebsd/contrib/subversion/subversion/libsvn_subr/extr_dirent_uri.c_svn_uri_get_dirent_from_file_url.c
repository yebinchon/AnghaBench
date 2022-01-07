
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 char* apr_pcalloc (int *,int) ;
 char* apr_pstrcat (int *,char*,char const*,char*,int ) ;
 char* apr_pstrmemdup (int *,char const*,int) ;
 char canonicalize_to_upper (char) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 char* svn_path_uri_decode (char const*,int *) ;
 int svn_uri_is_canonical (char const*,int *) ;

svn_error_t *
svn_uri_get_dirent_from_file_url(const char **dirent,
                                 const char *url,
                                 apr_pool_t *pool)
{
  const char *hostname, *path;

  SVN_ERR_ASSERT(svn_uri_is_canonical(url, pool));




  if (strncmp(url, "file://", 7) != 0)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("Local URL '%s' does not contain 'file://' "
                               "prefix"), url);






  hostname = url + 7;
  path = strchr(hostname, '/');
  if (path)
    hostname = apr_pstrmemdup(pool, hostname, path - hostname);
  else
    path = "/";


  if (*hostname == '\0')
    hostname = ((void*)0);
  else
    {
      hostname = svn_path_uri_decode(hostname, pool);
      if (strcmp(hostname, "localhost") == 0)
        hostname = ((void*)0);
    }
  if (hostname)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("Local URL '%s' contains unsupported hostname"),
                             url);

  *dirent = svn_path_uri_decode(path, pool);

  return SVN_NO_ERROR;
}
