
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int format; int max_files_per_dir; scalar_t__ youngest_rev_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_20__ {int pool; int path; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;
 int read_config (TYPE_1__*,int ,int ,int *) ;
 int read_global_config (TYPE_2__*) ;
 int svn_fs_x__path_current (TYPE_2__*,int *) ;
 int svn_fs_x__path_lock (TYPE_2__*,int *) ;
 int svn_fs_x__path_min_unpacked_rev (TYPE_2__*,int *) ;
 int svn_fs_x__path_revprop_generation (TYPE_2__*,int *) ;
 int svn_fs_x__path_shard (TYPE_2__*,int ,int *) ;
 int svn_fs_x__path_txn_current (TYPE_2__*,int *) ;
 int svn_fs_x__path_txn_current_lock (TYPE_2__*,int *) ;
 int svn_fs_x__path_txn_proto_revs (TYPE_2__*,int *) ;
 int svn_fs_x__path_txns_dir (TYPE_2__*,int *) ;
 int svn_fs_x__reset_revprop_generation_file (TYPE_2__*,int *) ;
 int svn_fs_x__set_uuid (TYPE_2__*,int *,int *,int ,int *) ;
 int svn_io_file_create (int ,char*,int *) ;
 int svn_io_file_create_empty (int ,int *) ;
 int svn_io_make_dir_recursively (int ,int *) ;
 int write_config (TYPE_2__*,int *) ;
 int write_revision_zero (TYPE_2__*,int *) ;

svn_error_t *
svn_fs_x__create_file_tree(svn_fs_t *fs,
                           const char *path,
                           int format,
                           int shard_size,
                           apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;

  fs->path = apr_pstrdup(fs->pool, path);
  ffd->format = format;


  ffd->max_files_per_dir = shard_size;


  SVN_ERR(svn_io_make_dir_recursively(
                              svn_fs_x__path_shard(fs, 0, scratch_pool),
                              scratch_pool));


  SVN_ERR(svn_io_make_dir_recursively(
                                  svn_fs_x__path_txns_dir(fs, scratch_pool),
                                  scratch_pool));


  SVN_ERR(svn_io_make_dir_recursively(
                            svn_fs_x__path_txn_proto_revs(fs, scratch_pool),
                            scratch_pool));


  SVN_ERR(svn_io_file_create(svn_fs_x__path_current(fs, scratch_pool),
                             "0\n", scratch_pool));


  SVN_ERR(svn_io_file_create_empty(svn_fs_x__path_lock(fs, scratch_pool),
                                   scratch_pool));
  SVN_ERR(svn_fs_x__set_uuid(fs, ((void*)0), ((void*)0), FALSE, scratch_pool));


  SVN_ERR(write_config(fs, scratch_pool));
  SVN_ERR(read_config(ffd, fs->path, fs->pool, scratch_pool));


  SVN_ERR(read_global_config(fs));


  SVN_ERR(write_revision_zero(fs, scratch_pool));


  SVN_ERR(svn_io_file_create(
                          svn_fs_x__path_min_unpacked_rev(fs, scratch_pool),
                          "0\n", scratch_pool));



  SVN_ERR(svn_io_file_create(svn_fs_x__path_txn_current(fs, scratch_pool),
                             "0\n", scratch_pool));
  SVN_ERR(svn_io_file_create_empty(
                          svn_fs_x__path_txn_current_lock(fs, scratch_pool),
                          scratch_pool));


  SVN_ERR(svn_io_file_create_empty(
                        svn_fs_x__path_revprop_generation(fs, scratch_pool),
                        scratch_pool));
  SVN_ERR(svn_fs_x__reset_revprop_generation_file(fs, scratch_pool));

  ffd->youngest_rev_cache = 0;
  return SVN_NO_ERROR;
}
