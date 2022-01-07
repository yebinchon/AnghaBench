
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_10__ {int max_files_per_dir; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_11__ {int path; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int (* svn_fs_hotcopy_notify_t ) (void*,scalar_t__,scalar_t__,int *) ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int PATH_MIN_UNPACKED_REV ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int hotcopy_copy_packed_shard (int *,scalar_t__*,TYPE_2__*,TYPE_2__*,scalar_t__,int,int *) ;
 int hotcopy_copy_shard_file (int *,char const*,char const*,scalar_t__,int,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 int svn_fs_x__path_shard (TYPE_2__*,scalar_t__,int *) ;
 int svn_fs_x__read_min_unpacked_rev (scalar_t__*,TYPE_2__*,int *) ;
 int svn_fs_x__write_current (TYPE_2__*,scalar_t__,int *) ;
 int svn_io_dir_file_copy (int ,int ,int ,int *) ;
 int svn_io_remove_dir2 (int ,int ,int (*) (void*),void*,int *) ;
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
                  svn_fs_hotcopy_notify_t notify_func,
                  void* notify_baton,
                  svn_cancel_func_t cancel_func,
                  void* cancel_baton,
                  apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *src_ffd = src_fs->fsap_data;
  int max_files_per_dir = src_ffd->max_files_per_dir;
  svn_revnum_t src_min_unpacked_rev;
  svn_revnum_t dst_min_unpacked_rev;
  svn_revnum_t rev;
  apr_pool_t *iterpool;


  SVN_ERR(svn_fs_x__read_min_unpacked_rev(&src_min_unpacked_rev, src_fs,
                                          scratch_pool));
  SVN_ERR(svn_fs_x__read_min_unpacked_rev(&dst_min_unpacked_rev, dst_fs,
                                          scratch_pool));





  if (src_min_unpacked_rev < dst_min_unpacked_rev)
    return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                             _("The hotcopy destination already contains "
                               "more packed revisions (%lu) than the "
                               "hotcopy source contains (%lu)"),
                             dst_min_unpacked_rev - 1,
                             src_min_unpacked_rev - 1);

  SVN_ERR(svn_io_dir_file_copy(src_fs->path, dst_fs->path,
                               PATH_MIN_UNPACKED_REV, scratch_pool));

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));





  iterpool = svn_pool_create(scratch_pool);

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
          SVN_ERR(svn_fs_x__write_current(dst_fs, pack_end_rev, iterpool));
        }






      if (notify_func && !skipped)
        notify_func(notify_baton, rev, pack_end_rev, iterpool);



      SVN_ERR(svn_io_remove_dir2(svn_fs_x__path_shard(dst_fs, rev, iterpool),
                                 TRUE, cancel_func, cancel_baton, iterpool));
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
      SVN_ERR(hotcopy_copy_shard_file(&skipped, src_revs_dir, dst_revs_dir,
                                      rev, max_files_per_dir, FALSE,
                                      iterpool));


      SVN_ERR(hotcopy_copy_shard_file(&skipped, src_revs_dir, dst_revs_dir,
                                      rev, max_files_per_dir, TRUE,
                                      iterpool));




      if (rev > dst_youngest)
        {
          if (max_files_per_dir && (rev % max_files_per_dir == 0))
            {
              SVN_ERR(svn_fs_x__write_current(dst_fs, rev, iterpool));
            }
        }

      if (notify_func && !skipped)
        notify_func(notify_baton, rev, rev, iterpool);
    }
  svn_pool_destroy(iterpool);



  SVN_ERR_ASSERT(rev == src_youngest + 1);

  return SVN_NO_ERROR;
}
