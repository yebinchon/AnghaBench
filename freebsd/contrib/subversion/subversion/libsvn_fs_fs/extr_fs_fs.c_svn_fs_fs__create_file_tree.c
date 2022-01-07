
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int pool; int path; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_20__ {int format; int max_files_per_dir; scalar_t__ youngest_rev_cache; int use_log_addressing; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int PATH_REVPROPS_DIR ;
 int PATH_REVS_DIR ;
 int SVN_ERR (int ) ;
 int SVN_FS_FS__MIN_CONFIG_FILE ;
 int SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT ;
 int SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT ;
 int SVN_FS_FS__MIN_PACKED_FORMAT ;
 int SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT ;
 int SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;
 int read_config (TYPE_2__*,int ,int ,int *) ;
 int read_global_config (TYPE_1__*) ;
 int svn_dirent_join (char const*,int ,int *) ;
 int svn_fs_fs__path_current (TYPE_1__*,int *) ;
 int svn_fs_fs__path_lock (TYPE_1__*,int *) ;
 int svn_fs_fs__path_min_unpacked_rev (TYPE_1__*,int *) ;
 int svn_fs_fs__path_rev_shard (TYPE_1__*,int ,int *) ;
 int svn_fs_fs__path_revprops_shard (TYPE_1__*,int ,int *) ;
 int svn_fs_fs__path_txn_current (TYPE_1__*,int *) ;
 int svn_fs_fs__path_txn_current_lock (TYPE_1__*,int *) ;
 int svn_fs_fs__path_txn_proto_revs (TYPE_1__*,int *) ;
 int svn_fs_fs__path_txns_dir (TYPE_1__*,int *) ;
 int svn_fs_fs__set_uuid (TYPE_1__*,int *,int *,int *) ;
 int svn_fs_fs__write_current (TYPE_1__*,int ,int,int,int *) ;
 int svn_io_file_create (int ,char*,int *) ;
 int svn_io_file_create_empty (int ,int *) ;
 int svn_io_make_dir_recursively (int ,int *) ;
 int write_config (TYPE_1__*,int *) ;
 int write_revision_zero (TYPE_1__*,int *) ;

svn_error_t *
svn_fs_fs__create_file_tree(svn_fs_t *fs,
                            const char *path,
                            int format,
                            int shard_size,
                            svn_boolean_t use_log_addressing,
                            apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  fs->path = apr_pstrdup(fs->pool, path);
  ffd->format = format;


  if (format >= SVN_FS_FS__MIN_LAYOUT_FORMAT_OPTION_FORMAT)
    ffd->max_files_per_dir = shard_size;
  else
    ffd->max_files_per_dir = 0;


  if (format >= SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT)
    ffd->use_log_addressing = use_log_addressing;
  else
    ffd->use_log_addressing = FALSE;


  if (ffd->max_files_per_dir)
    SVN_ERR(svn_io_make_dir_recursively(svn_fs_fs__path_rev_shard(fs, 0,
                                                                  pool),
                                        pool));
  else
    SVN_ERR(svn_io_make_dir_recursively(svn_dirent_join(path, PATH_REVS_DIR,
                                                        pool),
                                        pool));


  if (ffd->max_files_per_dir)
    SVN_ERR(svn_io_make_dir_recursively(svn_fs_fs__path_revprops_shard(fs, 0,
                                                                       pool),
                                        pool));
  else
    SVN_ERR(svn_io_make_dir_recursively(svn_dirent_join(path,
                                                        PATH_REVPROPS_DIR,
                                                        pool),
                                        pool));


  SVN_ERR(svn_io_make_dir_recursively(svn_fs_fs__path_txns_dir(fs, pool),
                                      pool));


  if (format >= SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT)
    SVN_ERR(svn_io_make_dir_recursively(svn_fs_fs__path_txn_proto_revs(fs,
                                                                       pool),
                                        pool));


  SVN_ERR(svn_io_file_create_empty(svn_fs_fs__path_current(fs, pool), pool));
  SVN_ERR(svn_fs_fs__write_current(fs, 0, 1, 1, pool));


  SVN_ERR(svn_io_file_create_empty(svn_fs_fs__path_lock(fs, pool), pool));
  SVN_ERR(svn_fs_fs__set_uuid(fs, ((void*)0), ((void*)0), pool));





  if (ffd->format >= SVN_FS_FS__MIN_CONFIG_FILE)
    SVN_ERR(write_config(fs, pool));

  SVN_ERR(read_config(ffd, fs->path, fs->pool, pool));


  SVN_ERR(read_global_config(fs));


  SVN_ERR(write_revision_zero(fs, pool));


  if (ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT)
    SVN_ERR(svn_io_file_create(svn_fs_fs__path_min_unpacked_rev(fs, pool),
                               "0\n", pool));



  if (format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    {
      SVN_ERR(svn_io_file_create(svn_fs_fs__path_txn_current(fs, pool),
                                 "0\n", pool));
      SVN_ERR(svn_io_file_create_empty(
                                 svn_fs_fs__path_txn_current_lock(fs, pool),
                                 pool));
    }

  ffd->youngest_rev_cache = 0;
  return SVN_NO_ERROR;
}
