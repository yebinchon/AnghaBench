
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_psprintf (int *,char*,int) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int (*) (void*),void*,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_fs__delete_revprops_shard(const char *shard_path,
                                 apr_int64_t shard,
                                 int max_files_per_dir,
                                 svn_cancel_func_t cancel_func,
                                 void *cancel_baton,
                                 apr_pool_t *scratch_pool)
{
  if (shard == 0)
    {
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);
      int i;


      for (i = 1; i < max_files_per_dir; ++i)
        {
          const char *path;
          svn_pool_clear(iterpool);

          path = svn_dirent_join(shard_path,
                                 apr_psprintf(iterpool, "%d", i),
                                 iterpool);
          if (cancel_func)
            SVN_ERR(cancel_func(cancel_baton));

          SVN_ERR(svn_io_remove_file2(path, TRUE, iterpool));
        }

      svn_pool_destroy(iterpool);
    }
  else
    SVN_ERR(svn_io_remove_dir2(shard_path, TRUE,
                               cancel_func, cancel_baton, scratch_pool));

  return SVN_NO_ERROR;
}
