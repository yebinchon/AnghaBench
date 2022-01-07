
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ kind; int mtime; int filesize; int special; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
struct TYPE_16__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_hash_t ;
struct TYPE_17__ {int mtime; int size; scalar_t__ name; } ;
typedef TYPE_3__ apr_finfo_t ;


 int APR_ENOENT ;
 int APR_FINFO_LINK ;
 int APR_FINFO_MTIME ;
 int APR_FINFO_NAME ;
 int APR_FINFO_SIZE ;
 int APR_FINFO_TYPE ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int) ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (int ) ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* entry_name_to_utf8 (char const**,scalar_t__,char const*,int *) ;
 int map_apr_finfo_to_node_kind (scalar_t__*,int *,TYPE_3__*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* svn_dirent_basename (char const*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ,...) ;
 int svn_hash_gets (int *,char const*) ;
 void* svn_io_dirent2_create (int *) ;
 TYPE_2__* svn_io_get_dirents3 (int **,int ,int ,int *,int *) ;
 TYPE_2__* svn_io_stat (TYPE_3__*,char const*,int,int *) ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_io_stat_dirent2(const svn_io_dirent2_t **dirent_p,
                    const char *path,
                    svn_boolean_t verify_truename,
                    svn_boolean_t ignore_enoent,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  apr_finfo_t finfo;
  svn_io_dirent2_t *dirent;
  svn_error_t *err;
  apr_int32_t wanted = APR_FINFO_TYPE | APR_FINFO_LINK
                       | APR_FINFO_SIZE | APR_FINFO_MTIME;






  err = svn_io_stat(&finfo, path, wanted, scratch_pool);

  if (err && ignore_enoent &&
      (APR_STATUS_IS_ENOENT(err->apr_err)
       || SVN__APR_STATUS_IS_ENOTDIR(err->apr_err)))
    {
      svn_error_clear(err);
      dirent = svn_io_dirent2_create(result_pool);
      SVN_ERR_ASSERT(dirent->kind == svn_node_none);

      *dirent_p = dirent;
      return SVN_NO_ERROR;
    }
  SVN_ERR(err);
  dirent = svn_io_dirent2_create(result_pool);
  map_apr_finfo_to_node_kind(&(dirent->kind), &(dirent->special), &finfo);

  dirent->filesize = finfo.size;
  dirent->mtime = finfo.mtime;

  *dirent_p = dirent;

  return SVN_NO_ERROR;
}
