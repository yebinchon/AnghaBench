
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int _ (char*) ;
 int create_db_lock (TYPE_1__*,int *) ;
 int * create_db_logs_lock (TYPE_1__*,int *) ;
 int create_repos_dir (int ,int *) ;

__attribute__((used)) static svn_error_t *
create_locks(svn_repos_t *repos, apr_pool_t *pool)
{

  SVN_ERR_W(create_repos_dir(repos->lock_path, pool),
            _("Creating lock dir"));

  SVN_ERR(create_db_lock(repos, pool));
  return create_db_logs_lock(repos, pool);
}
