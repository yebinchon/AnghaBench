
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_file_t ;


 int APR_FLOCK_EXCLUSIVE ;
 int APR_FLOCK_SHARED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int * svn_io_lock_open_file (int *,int ,int ,int *) ;

svn_error_t *
svn_io_file_lock2(const char *lock_file,
                  svn_boolean_t exclusive,
                  svn_boolean_t nonblocking,
                  apr_pool_t *pool)
{
  int locktype = APR_FLOCK_SHARED;
  apr_file_t *lockfile_handle;
  apr_int32_t flags;

  if (exclusive)
    locktype = APR_FLOCK_EXCLUSIVE;

  flags = APR_READ;
  if (locktype == APR_FLOCK_EXCLUSIVE)
    flags |= APR_WRITE;
  SVN_ERR(svn_io_file_open(&lockfile_handle, lock_file, flags,
                           APR_OS_DEFAULT,
                           pool));


  return svn_io_lock_open_file(lockfile_handle, exclusive, nonblocking, pool);
}
