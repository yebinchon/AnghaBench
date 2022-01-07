
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_14__ {int uuid; int path; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct upgrade_baton_t {int cancel_baton; int cancel_func; int notify_baton; int (* notify_func ) (int ,int,int ,int *) ;TYPE_1__* fs; } ;
struct TYPE_15__ {int format; int max_files_per_dir; scalar_t__ use_log_addressing; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int PATH_CONFIG ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_GENERAL ;
 int SVN_FS_FS__FORMAT_NUMBER ;
 int SVN_FS_FS__MIN_PACKED_FORMAT ;
 int SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ;
 int SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT ;
 int SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int create_file_ignore_eexist (int ,char*,int *) ;
 char* path_format (TYPE_1__*,int *) ;
 int read_format (int*,int*,scalar_t__*,char const*,int *) ;
 int read_uuid (TYPE_1__*,int *) ;
 int stub1 (int ,int,int ,int *) ;
 int svn_dirent_join (int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_fs__path_min_unpacked_rev (TYPE_1__*,int *) ;
 int svn_fs_fs__path_txn_current (TYPE_1__*,int *) ;
 int svn_fs_fs__path_txn_current_lock (TYPE_1__*,int *) ;
 int svn_fs_fs__path_txn_proto_revs (TYPE_1__*,int *) ;
 int svn_fs_fs__set_uuid (TYPE_1__*,int ,int *,int *) ;
 int svn_fs_fs__upgrade_cleanup_pack_revprops (TYPE_1__*,int (*) (int ,int,int ,int *),int ,int ,int ,int *) ;
 int svn_fs_fs__upgrade_pack_revprops (TYPE_1__*,int (*) (int ,int,int ,int *),int ,int ,int ,int *) ;
 int svn_fs_fs__write_format (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_upgrade_format_bumped ;
 int svn_io_check_path (int ,int*,int *) ;
 int svn_io_file_create (int ,char*,int *) ;
 int svn_io_make_dir_recursively (int ,int *) ;


 int write_config (TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
upgrade_body(void *baton, apr_pool_t *pool)
{
  struct upgrade_baton_t *upgrade_baton = baton;
  svn_fs_t *fs = upgrade_baton->fs;
  fs_fs_data_t *ffd = fs->fsap_data;
  int format, max_files_per_dir;
  svn_boolean_t use_log_addressing;
  const char *format_path = path_format(fs, pool);
  svn_node_kind_t kind;
  svn_boolean_t needs_revprop_shard_cleanup = FALSE;


  SVN_ERR(read_format(&format, &max_files_per_dir, &use_log_addressing,
                      format_path, pool));


  SVN_ERR(svn_io_check_path(svn_dirent_join(fs->path, PATH_CONFIG, pool),
                            &kind, pool));
  switch (kind)
    {
    case 128:
      SVN_ERR(write_config(fs, pool));
      break;
    case 129:
      break;
    default:
      return svn_error_createf(SVN_ERR_FS_GENERAL, ((void*)0),
                               _("'%s' is not a regular file."
                                 " Please move it out of "
                                 "the way and try again"),
                               svn_dirent_join(fs->path, PATH_CONFIG, pool));
    }


  if (format == SVN_FS_FS__FORMAT_NUMBER)
    return SVN_NO_ERROR;



  if (format < SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    {
      SVN_ERR(create_file_ignore_eexist(
                           svn_fs_fs__path_txn_current(fs, pool), "0\n",
                           pool));
      SVN_ERR(create_file_ignore_eexist(
                           svn_fs_fs__path_txn_current_lock(fs, pool), "",
                           pool));
    }



  if (format < SVN_FS_FS__MIN_PROTOREVS_DIR_FORMAT)
    {
      SVN_ERR(svn_io_make_dir_recursively(
          svn_fs_fs__path_txn_proto_revs(fs, pool), pool));
    }


  if (format < SVN_FS_FS__MIN_PACKED_FORMAT)
    SVN_ERR(svn_io_file_create(svn_fs_fs__path_min_unpacked_rev(fs, pool),
                               "0\n", pool));





  if ( format >= SVN_FS_FS__MIN_PACKED_FORMAT
      && format < SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT
      && max_files_per_dir > 0)
    {
      needs_revprop_shard_cleanup = TRUE;
      SVN_ERR(svn_fs_fs__upgrade_pack_revprops(fs,
                                               upgrade_baton->notify_func,
                                               upgrade_baton->notify_baton,
                                               upgrade_baton->cancel_func,
                                               upgrade_baton->cancel_baton,
                                               pool));
    }




  SVN_ERR(read_uuid(fs, pool));



  ffd->format = SVN_FS_FS__FORMAT_NUMBER;
  ffd->max_files_per_dir = max_files_per_dir;
  ffd->use_log_addressing = use_log_addressing;



  SVN_ERR(svn_fs_fs__set_uuid(fs, fs->uuid, ((void*)0), pool));


  SVN_ERR(svn_fs_fs__write_format(fs, TRUE, pool));

  if (upgrade_baton->notify_func)
    SVN_ERR(upgrade_baton->notify_func(upgrade_baton->notify_baton,
                                       SVN_FS_FS__FORMAT_NUMBER,
                                       svn_fs_upgrade_format_bumped,
                                       pool));


  if (needs_revprop_shard_cleanup)
    SVN_ERR(svn_fs_fs__upgrade_cleanup_pack_revprops(fs,
                                               upgrade_baton->notify_func,
                                               upgrade_baton->notify_baton,
                                               upgrade_baton->cancel_func,
                                               upgrade_baton->cancel_baton,
                                               pool));


  return SVN_NO_ERROR;
}
