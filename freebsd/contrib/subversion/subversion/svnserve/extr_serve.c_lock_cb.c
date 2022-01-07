
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int svn_error_t ;
typedef int server_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int log_error (int *,int *) ;

__attribute__((used)) static svn_error_t *
lock_cb(void *baton,
        const char *path,
        const svn_lock_t *lock,
        svn_error_t *fs_err,
        apr_pool_t *pool)
{
  server_baton_t *sb = baton;

  log_error(fs_err, sb);

  return SVN_NO_ERROR;
}
