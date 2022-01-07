
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int (* svn_fs_hotcopy_notify_t ) (void*,scalar_t__,scalar_t__,int *) ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_psprintf (int *,char*,scalar_t__) ;
 int hotcopy_io_dir_file_copy (int *,char const*,char const*,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_revisions_old(svn_fs_t *src_fs,
                      svn_fs_t *dst_fs,
                      svn_revnum_t src_youngest,
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
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_revnum_t rev;

  for (rev = 0; rev <= src_youngest; rev++)
    {
      svn_boolean_t skipped = TRUE;

      svn_pool_clear(iterpool);

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));

      SVN_ERR(hotcopy_io_dir_file_copy(&skipped, src_revs_dir, dst_revs_dir,
                                       apr_psprintf(iterpool, "%ld", rev),
                                       iterpool));
      SVN_ERR(hotcopy_io_dir_file_copy(&skipped, src_revprops_dir,
                                       dst_revprops_dir,
                                       apr_psprintf(iterpool, "%ld", rev),
                                       iterpool));

      if (notify_func && !skipped)
        notify_func(notify_baton, rev, rev, iterpool);
    }
    svn_pool_destroy(iterpool);

    return SVN_NO_ERROR;
}
