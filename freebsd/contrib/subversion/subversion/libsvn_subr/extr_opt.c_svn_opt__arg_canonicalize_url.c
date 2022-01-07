
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_URL ;
 int * SVN_NO_ERROR ;
 char SVN_PATH_LOCAL_SEPARATOR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 int * svn_error_createf (int ,int ,int ,char const*) ;
 scalar_t__ svn_path_is_backpath_present (char const*) ;
 char* svn_path_uri_autoescape (char const*,int *) ;
 char* svn_path_uri_from_iri (char const*,int *) ;
 char* svn_uri_canonicalize (char const*,int *) ;

svn_error_t *
svn_opt__arg_canonicalize_url(const char **url_out, const char *url_in,
                              apr_pool_t *pool)
{
  const char *target;


  target = svn_path_uri_from_iri(url_in, pool);

  target = svn_path_uri_autoescape(target, pool);



  if (strchr(target, SVN_PATH_LOCAL_SEPARATOR))
    {
      char *p = apr_pstrdup(pool, target);
      target = p;


      for (; *p != '\0'; ++p)
        if (*p == SVN_PATH_LOCAL_SEPARATOR)
          *p = '/';
    }



  if (svn_path_is_backpath_present(target))
    return svn_error_createf(SVN_ERR_BAD_URL, 0,
                             _("URL '%s' contains a '..' element"),
                             target);


  target = svn_uri_canonicalize(target, pool);

  *url_out = target;
  return SVN_NO_ERROR;
}
