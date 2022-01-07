
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int APR_FILEPATH_NOTRELATIVE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_BAD_FILENAME ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_filepath_merge (char**,int *,char const*,int ,int *) ;
 char* apr_pstrdup (int *,char const*) ;
 char* svn_dirent_canonicalize (char const*,int *) ;
 scalar_t__ svn_dirent_is_absolute (char const*) ;
 scalar_t__ svn_dirent_is_canonical (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_create (scalar_t__,int *,int *) ;
 int * svn_error_createf (int ,int ,int ,int ) ;
 int svn_path_cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_path_cstring_to_utf8 (char const**,char*,int *) ;
 int svn_path_is_backpath_present (char const*) ;
 int svn_path_is_url (char const*) ;

svn_error_t *
svn_dirent_get_absolute(const char **pabsolute,
                        const char *relative,
                        apr_pool_t *pool)
{
  char *buffer;
  apr_status_t apr_err;
  const char *path_apr;

  SVN_ERR_ASSERT(! svn_path_is_url(relative));


  SVN_ERR(svn_path_cstring_from_utf8(&path_apr, relative, pool));

  apr_err = apr_filepath_merge(&buffer, ((void*)0),
                               path_apr,
                               APR_FILEPATH_NOTRELATIVE,
                               pool);
  if (apr_err)
    {
      if (svn_dirent_is_absolute(relative)
          && svn_dirent_is_canonical(relative, pool)
          && !svn_path_is_backpath_present(relative))
        {
          *pabsolute = apr_pstrdup(pool, relative);
          return SVN_NO_ERROR;
        }

      return svn_error_createf(SVN_ERR_BAD_FILENAME,
                               svn_error_create(apr_err, ((void*)0), ((void*)0)),
                               _("Couldn't determine absolute path of '%s'"),
                               svn_dirent_local_style(relative, pool));
    }

  SVN_ERR(svn_path_cstring_to_utf8(pabsolute, buffer, pool));
  *pabsolute = svn_dirent_canonicalize(*pabsolute, pool);
  return SVN_NO_ERROR;
}
