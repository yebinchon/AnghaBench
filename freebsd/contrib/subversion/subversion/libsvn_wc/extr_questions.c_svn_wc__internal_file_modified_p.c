
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_15__ {scalar_t__ kind; scalar_t__ filesize; scalar_t__ mtime; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef scalar_t__ svn_filesize_t ;
struct TYPE_16__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_EACCES (int ) ;
 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_WC_PATH_ACCESS_DENIED ;
 scalar_t__ SVN_INVALID_FILESIZE ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 TYPE_2__* compare_and_verify (scalar_t__*,int *,char const*,scalar_t__,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *) ;
 TYPE_2__* svn_error_create (int ,TYPE_2__*,int *) ;
 TYPE_2__* svn_io_stat_dirent2 (TYPE_1__ const**,char const*,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ svn_node_file ;
 TYPE_2__* svn_wc__db_global_record_fileinfo (int *,char const*,scalar_t__,scalar_t__,int *) ;
 TYPE_2__* svn_wc__db_pristine_read (int **,scalar_t__*,int *,char const*,int const*,int *,int *) ;
 TYPE_2__* svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_normal ;
 TYPE_2__* svn_wc__db_wclock_owns_lock (scalar_t__*,int *,char const*,scalar_t__,int *) ;

svn_error_t *
svn_wc__internal_file_modified_p(svn_boolean_t *modified_p,
                                 svn_wc__db_t *db,
                                 const char *local_abspath,
                                 svn_boolean_t exact_comparison,
                                 apr_pool_t *scratch_pool)
{
  svn_stream_t *pristine_stream;
  svn_filesize_t pristine_size;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const svn_checksum_t *checksum;
  svn_filesize_t recorded_size;
  apr_time_t recorded_mod_time;
  svn_boolean_t has_props;
  svn_boolean_t props_mod;
  const svn_io_dirent2_t *dirent;


  SVN_ERR(svn_wc__db_read_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), &checksum, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0),
                               &recorded_size, &recorded_mod_time,
                               ((void*)0), ((void*)0), ((void*)0), &has_props, &props_mod,
                               ((void*)0), ((void*)0), ((void*)0),
                               db, local_abspath,
                               scratch_pool, scratch_pool));



  if (!checksum
      || (kind != svn_node_file)
      || ((status != svn_wc__db_status_normal)
          && (status != svn_wc__db_status_added)))
    {
      *modified_p = TRUE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_io_stat_dirent2(&dirent, local_abspath, FALSE, TRUE,
                              scratch_pool, scratch_pool));

  if (dirent->kind != svn_node_file)
    {

      *modified_p = FALSE;
      return SVN_NO_ERROR;
    }

  if (! exact_comparison)
    {
      if (recorded_size != SVN_INVALID_FILESIZE
          && dirent->filesize != recorded_size)
        goto compare_them;






      if (recorded_mod_time != dirent->mtime)
        goto compare_them;

      *modified_p = FALSE;
      return SVN_NO_ERROR;
    }

 compare_them:
  SVN_ERR(svn_wc__db_pristine_read(&pristine_stream, &pristine_size,
                                   db, local_abspath, checksum,
                                   scratch_pool, scratch_pool));


  {
    svn_error_t *err;
    err = compare_and_verify(modified_p, db,
                             local_abspath, dirent->filesize,
                             pristine_stream, pristine_size,
                             has_props, props_mod,
                             exact_comparison,
                             scratch_pool);



    if (err && APR_STATUS_IS_EACCES(err->apr_err))
      return svn_error_create(SVN_ERR_WC_PATH_ACCESS_DENIED, err, ((void*)0));
    else
      SVN_ERR(err);
  }

  if (!*modified_p)
    {
      svn_boolean_t own_lock;


      SVN_ERR(svn_wc__db_wclock_owns_lock(&own_lock, db, local_abspath, FALSE,
                                          scratch_pool));
      if (own_lock)
        SVN_ERR(svn_wc__db_global_record_fileinfo(db, local_abspath,
                                                  dirent->filesize,
                                                  dirent->mtime,
                                                  scratch_pool));
    }

  return SVN_NO_ERROR;
}
