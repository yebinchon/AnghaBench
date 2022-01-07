
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_17__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_FROM_OS_ERROR (int ) ;
 int ERROR_ACCESS_DENIED ;
 int FALSE ;
 int STMT_SELECT_PRISTINE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int get_pristine_fname (char const**,int ,TYPE_3__ const*,int *,int *) ;
 scalar_t__ svn_checksum_sha1 ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 int svn_sqlite__bind_checksum (int *,int,TYPE_3__ const*,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_pristine_check(svn_boolean_t *present,
                          svn_wc__db_t *db,
                          const char *wri_abspath,
                          const svn_checksum_t *sha1_checksum,
                          apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(wri_abspath));
  SVN_ERR_ASSERT(sha1_checksum != ((void*)0));

  if (sha1_checksum->kind != svn_checksum_sha1)
    {
      *present = FALSE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);




  {
    const char *pristine_abspath;
    svn_node_kind_t kind_on_disk;
    svn_error_t *err;

    SVN_ERR(get_pristine_fname(&pristine_abspath, wcroot->abspath,
                               sha1_checksum, scratch_pool, scratch_pool));
    err = svn_io_check_path(pristine_abspath, &kind_on_disk, scratch_pool);
    if (err)
      return svn_error_trace(err);
    else if (kind_on_disk != svn_node_file)
      {
        *present = FALSE;
        return SVN_NO_ERROR;
      }
  }


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb, STMT_SELECT_PRISTINE));
  SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, sha1_checksum, scratch_pool));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  *present = have_row;
  return SVN_NO_ERROR;
}
