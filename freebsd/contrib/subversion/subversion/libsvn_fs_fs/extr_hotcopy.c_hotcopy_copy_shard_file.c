
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,int) ;
 int hotcopy_io_dir_file_copy (int *,char const*,char const*,char*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_make_dir_recursively (char const*,int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_copy_shard_file(svn_boolean_t *skipped_p,
                        const char *src_subdir,
                        const char *dst_subdir,
                        svn_revnum_t rev,
                        int max_files_per_dir,
                        apr_pool_t *scratch_pool)
{
  const char *src_subdir_shard = src_subdir,
             *dst_subdir_shard = dst_subdir;

  if (max_files_per_dir)
    {
      const char *shard = apr_psprintf(scratch_pool, "%ld",
                                       rev / max_files_per_dir);
      src_subdir_shard = svn_dirent_join(src_subdir, shard, scratch_pool);
      dst_subdir_shard = svn_dirent_join(dst_subdir, shard, scratch_pool);

      if (rev % max_files_per_dir == 0)
        {
          SVN_ERR(svn_io_make_dir_recursively(dst_subdir_shard, scratch_pool));
          SVN_ERR(svn_io_copy_perms(dst_subdir, dst_subdir_shard,
                                    scratch_pool));
        }
    }

  SVN_ERR(hotcopy_io_dir_file_copy(skipped_p,
                                   src_subdir_shard, dst_subdir_shard,
                                   apr_psprintf(scratch_pool, "%ld", rev),
                                   scratch_pool));

  return SVN_NO_ERROR;
}
