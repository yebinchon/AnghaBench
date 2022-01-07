
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int bdb_env_baton_t ;
typedef int apr_pool_t ;


 int DB_RECOVER ;
 int DB_RECOVER_FATAL ;
 int SVN_BDB_PRIVATE_ENV_FLAGS ;
 int SVN_ERR (int ) ;
 int * svn_fs_bdb__close (int *) ;
 int svn_fs_bdb__open (int **,char const*,int,int,int *) ;

__attribute__((used)) static svn_error_t *
bdb_recover(const char *path, svn_boolean_t fatal, apr_pool_t *pool)
{
  bdb_env_baton_t *bdb;
  SVN_ERR(svn_fs_bdb__open(&bdb, path,
                           ((fatal ? DB_RECOVER_FATAL : DB_RECOVER)
                            | SVN_BDB_PRIVATE_ENV_FLAGS),
                           0666, pool));
  return svn_fs_bdb__close(bdb);
}
