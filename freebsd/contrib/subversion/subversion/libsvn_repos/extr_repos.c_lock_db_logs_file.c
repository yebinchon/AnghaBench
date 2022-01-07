
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int create_db_logs_lock (int *,int *) ;
 int svn_error_clear (int ) ;
 int * svn_io_file_lock2 (char const*,int ,int ,int *) ;
 char* svn_repos_db_logs_lockfile (int *,int *) ;

__attribute__((used)) static svn_error_t *
lock_db_logs_file(svn_repos_t *repos,
                  svn_boolean_t exclusive,
                  apr_pool_t *pool)
{
  const char * lock_file = svn_repos_db_logs_lockfile(repos, pool);



  svn_error_clear(create_db_logs_lock(repos, pool));

  return svn_io_file_lock2(lock_file, exclusive, FALSE, pool);
}
