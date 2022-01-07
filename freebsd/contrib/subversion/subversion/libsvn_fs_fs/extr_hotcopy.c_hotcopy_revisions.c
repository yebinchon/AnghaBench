
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_13__ {int path; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int (* svn_fs_hotcopy_notify_t ) (void*,scalar_t__,scalar_t__,int *) ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_14__ {int max_files_per_dir; scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int PATH_MIN_UNPACKED_REV ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int hotcopy_copy_packed_shard (scalar_t__*,scalar_t__*,TYPE_1__*,TYPE_1__*,scalar_t__,int,int *) ;
 int hotcopy_copy_shard_file (scalar_t__*,char const*,char const*,scalar_t__,int,int *) ;
 int hotcopy_remove_rev_files (TYPE_1__*,scalar_t__,int ,int,int *) ;
 int hotcopy_remove_revprop_files (TYPE_1__*,scalar_t__,int ,int,int *) ;
 int remove_folder (int ,int (*) (void*),void*,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 int svn_fs_fs__path_rev_shard (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_fs__path_revprops_shard (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_fs__read_min_unpacked_rev (scalar_t__*,TYPE_1__*,int *) ;
 int svn_fs_fs__write_current (TYPE_1__*,scalar_t__,int ,int ,int *) ;
 int svn_io_dir_file_copy (int ,int ,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_revisions(svn_fs_t *src_fs,
                  svn_fs_t *dst_fs,
                  svn_revnum_t src_youngest,
                  svn_revnum_t dst_youngest,
                  svn_boolean_t incremental,
                  const char *src_revs_dir,
                  const char *dst_revs_dir,
                  const char *src_revprops_dir,
                  const char *dst_revprops_dir,
                  svn_fs_hotcopy_notify_t notify_func,
                  void* notify_baton,
                  svn_cancel_func_t cancel_func,
                  void* cancel_baton,
                  apr_pool_t *pool)
{
  fs_fs_data_t *src_ffd = src_fs->fsap_data;
  fs_fs_data_t *dst_ffd = dst_fs->fsap_data;
  int max_files_per_dir = src_ffd->max_files_per_dir;
  svn_revnum_t src_min_unpacked_rev;
  svn_revnum_t dst_min_unpacked_rev;
  svn_revnum_t rev;
  apr_pool_t *iterpool;


  if (src_ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT)
    {
      SVN_ERR(svn_fs_fs__read_min_unpacked_rev(&src_min_unpacked_rev,
                                               src_fs, pool));
      SVN_ERR(svn_fs_fs__read_min_unpacked_rev(&dst_min_unpacked_rev,
                                               dst_fs, pool));





      if (src_min_unpacked_rev < dst_min_unpacked_rev)
        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("The hotcopy destination already contains "
                                   "more packed revisions (%lu) than the "
                                   "hotcopy source contains (%lu)"),
                                   dst_min_unpacked_rev - 1,
                                   src_min_unpacked_rev - 1);

      SVN_ERR(svn_io_dir_file_copy(src_fs->path, dst_fs->path,
                                   PATH_MIN_UNPACKED_REV, pool));
    }
  else
    {
      src_min_unpacked_rev = 0;
      dst_min_unpacked_rev = 0;
    }

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));





  iterpool = svn_pool_create(pool);

  for (rev = 0; rev < src_min_unpacked_rev; rev += max_files_per_dir)
    {
      svn_boolean_t skipped = TRUE;
      svn_revnum_t pack_end_rev;

      svn_pool_clear(iterpool);

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));


      SVN_ERR(hotcopy_copy_packed_shard(&skipped, &dst_min_unpacked_rev,
                                        src_fs, dst_fs,
                                        rev, max_files_per_dir,
                                        iterpool));

      pack_end_rev = rev + max_files_per_dir - 1;




      if (pack_end_rev > dst_youngest)
        {
          SVN_ERR(svn_fs_fs__write_current(dst_fs, pack_end_rev, 0, 0,
                                           iterpool));
        }






      if (notify_func && !skipped)
        notify_func(notify_baton, rev, pack_end_rev, iterpool);


      if (incremental)
        {
          SVN_ERR(hotcopy_remove_rev_files(dst_fs, rev,
                                           rev + max_files_per_dir,
                                           max_files_per_dir, iterpool));
          if (dst_ffd->format >= SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT)
            SVN_ERR(hotcopy_remove_revprop_files(dst_fs, rev,
                                                 rev + max_files_per_dir,
                                                 max_files_per_dir,
                                                 iterpool));
        }



      SVN_ERR(remove_folder(svn_fs_fs__path_rev_shard(dst_fs, rev, iterpool),
                            cancel_func, cancel_baton, iterpool));
      if (rev > 0 && dst_ffd->format >= SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT)
        SVN_ERR(remove_folder(svn_fs_fs__path_revprops_shard(dst_fs, rev,
                                                             iterpool),
                              cancel_func, cancel_baton, iterpool));
    }

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));

  SVN_ERR_ASSERT(rev == src_min_unpacked_rev);
  SVN_ERR_ASSERT(src_min_unpacked_rev == dst_min_unpacked_rev);



  for (; rev <= src_youngest; rev++)
    {
      svn_boolean_t skipped = TRUE;

      svn_pool_clear(iterpool);

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));
      SVN_ERR(hotcopy_copy_shard_file(&skipped,
                                      src_revs_dir, dst_revs_dir, rev,
                                      max_files_per_dir,
                                      iterpool));

      SVN_ERR(hotcopy_copy_shard_file(&skipped,
                                      src_revprops_dir, dst_revprops_dir,
                                      rev, max_files_per_dir,
                                      iterpool));




      if (rev > dst_youngest)
        {
          if (max_files_per_dir && (rev % max_files_per_dir == 0))
            {
              SVN_ERR(svn_fs_fs__write_current(dst_fs, rev, 0, 0,
                                               iterpool));
            }
        }

      if (notify_func && !skipped)
        notify_func(notify_baton, rev, rev, iterpool);
    }
  svn_pool_destroy(iterpool);



  SVN_ERR_ASSERT(rev == src_youngest + 1);

  return SVN_NO_ERROR;
}
