
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_is_child (char const*,char const*,int *) ;
 int svn_io_temp_dir (char const**,int *) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__internal_translated_file (char const**,char const*,int ,char const*,int ,int *,int *,int *,int *) ;

svn_error_t *
svn_wc_translated_file2(const char **xlated_path,
                        const char *src,
                        const char *versioned_file,
                        svn_wc_adm_access_t *adm_access,
                        apr_uint32_t flags,
                        apr_pool_t *pool)
{
  const char *versioned_abspath;
  const char *root;
  const char *tmp_root;
  const char *src_abspath;

  SVN_ERR(svn_dirent_get_absolute(&versioned_abspath, versioned_file, pool));
  SVN_ERR(svn_dirent_get_absolute(&src_abspath, src, pool));

  SVN_ERR(svn_wc__internal_translated_file(xlated_path, src_abspath,
                                           svn_wc__adm_get_db(adm_access),
                                           versioned_abspath,
                                           flags, ((void*)0), ((void*)0), pool, pool));

  if (strcmp(*xlated_path, src_abspath) == 0)
    *xlated_path = src;
  else if (! svn_dirent_is_absolute(versioned_file))
    {
      SVN_ERR(svn_io_temp_dir(&tmp_root, pool));
      if (! svn_dirent_is_child(tmp_root, *xlated_path, pool))
        {
          SVN_ERR(svn_dirent_get_absolute(&root, "", pool));

          if (svn_dirent_is_child(root, *xlated_path, pool))
            *xlated_path = svn_dirent_is_child(root, *xlated_path, pool);
        }
    }

  return SVN_NO_ERROR;
}
