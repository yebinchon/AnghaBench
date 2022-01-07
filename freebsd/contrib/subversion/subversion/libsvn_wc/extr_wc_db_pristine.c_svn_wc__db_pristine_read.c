
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_stream_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_11__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int _ (char*) ;
 int get_pristine_fname (char const**,int ,TYPE_2__ const*,int *,int *) ;
 int pristine_read_txn (int **,int *,TYPE_1__*,TYPE_2__ const*,char const*,int *,int *) ;
 scalar_t__ svn_checksum_sha1 ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_pristine_read(svn_stream_t **contents,
                         svn_filesize_t *size,
                         svn_wc__db_t *db,
                         const char *wri_abspath,
                         const svn_checksum_t *sha1_checksum,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *pristine_abspath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(wri_abspath));



  if (!sha1_checksum)
    return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                             _("Can't read '%s' from pristine store "
                               "because no checksum supplied"),
                             svn_dirent_local_style(wri_abspath, scratch_pool));

  SVN_ERR_ASSERT(sha1_checksum->kind == svn_checksum_sha1);

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_ERR(get_pristine_fname(&pristine_abspath, wcroot->abspath,
                             sha1_checksum,
                             scratch_pool, scratch_pool));
  SVN_WC__DB_WITH_TXN(
    pristine_read_txn(contents, size,
                      wcroot, sha1_checksum, pristine_abspath,
                      result_pool, scratch_pool),
    wcroot);

  return SVN_NO_ERROR;
}
