
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_adm_access_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 int svn_wc__internal_translated_stream (int **,int ,char const*,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc_translated_stream(svn_stream_t **stream,
                         const char *path,
                         const char *versioned_file,
                         svn_wc_adm_access_t *adm_access,
                         apr_uint32_t flags,
                         apr_pool_t *pool)
{
  const char *local_abspath;
  const char *versioned_abspath;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_dirent_get_absolute(&versioned_abspath, versioned_file, pool));

  return svn_error_trace(
    svn_wc__internal_translated_stream(stream, svn_wc__adm_get_db(adm_access),
                                       local_abspath, versioned_abspath, flags,
                                       pool, pool));
}
