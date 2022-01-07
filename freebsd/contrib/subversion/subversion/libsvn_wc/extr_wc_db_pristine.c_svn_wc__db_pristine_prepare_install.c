
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
struct TYPE_4__ {int * inner_stream; int * wcroot; } ;
typedef TYPE_1__ svn_wc__db_install_data_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char* pristine_get_tempdir (int *,int *,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_stream__create_for_install (int **,char const*,int *,int *) ;
 int * svn_stream_checksummed2 (int *,int *,int **,int ,int ,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_pristine_prepare_install(svn_stream_t **stream,
                                    svn_wc__db_install_data_t **install_data,
                                    svn_checksum_t **sha1_checksum,
                                    svn_checksum_t **md5_checksum,
                                    svn_wc__db_t *db,
                                    const char *wri_abspath,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *temp_dir_abspath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(wri_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  temp_dir_abspath = pristine_get_tempdir(wcroot, scratch_pool, scratch_pool);

  *install_data = apr_pcalloc(result_pool, sizeof(**install_data));
  (*install_data)->wcroot = wcroot;

  SVN_ERR_W(svn_stream__create_for_install(stream,
                                           temp_dir_abspath,
                                           result_pool, scratch_pool),
            _("Unable to create pristine install stream"));

  (*install_data)->inner_stream = *stream;

  if (md5_checksum)
    *stream = svn_stream_checksummed2(*stream, ((void*)0), md5_checksum,
                                      svn_checksum_md5, FALSE, result_pool);
  if (sha1_checksum)
    *stream = svn_stream_checksummed2(*stream, ((void*)0), sha1_checksum,
                                      svn_checksum_sha1, FALSE, result_pool);

  return SVN_NO_ERROR;
}
