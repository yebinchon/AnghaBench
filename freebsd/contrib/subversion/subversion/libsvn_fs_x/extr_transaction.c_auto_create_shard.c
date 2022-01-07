
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_12__ {int max_files_per_dir; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_fs_x__batch_fsync_t ;
struct TYPE_13__ {int path; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int APR_STATUS_IS_EEXIST (int ) ;
 int PATH_REVS_DIR ;
 int SVN_ERR (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 int svn_dirent_join (int ,int ,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_x__batch_fsync_new_path (int *,char const*,int *) ;
 char* svn_fs_x__path_shard (TYPE_2__*,int,int *) ;
 int svn_io_copy_perms (int ,char const*,int *) ;
 TYPE_3__* svn_io_dir_make (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
auto_create_shard(svn_fs_t *fs,
                  svn_revnum_t revision,
                  svn_fs_x__batch_fsync_t *batch,
                  apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  if (revision % ffd->max_files_per_dir == 0)
    {
      const char *new_dir = svn_fs_x__path_shard(fs, revision, scratch_pool);
      svn_error_t *err = svn_io_dir_make(new_dir, APR_OS_DEFAULT,
                                         scratch_pool);

      if (err && !APR_STATUS_IS_EEXIST(err->apr_err))
        return svn_error_trace(err);
      svn_error_clear(err);

      SVN_ERR(svn_io_copy_perms(svn_dirent_join(fs->path, PATH_REVS_DIR,
                                                scratch_pool),
                                new_dir, scratch_pool));
      SVN_ERR(svn_fs_x__batch_fsync_new_path(batch, new_dir, scratch_pool));
    }

  return SVN_NO_ERROR;
}
