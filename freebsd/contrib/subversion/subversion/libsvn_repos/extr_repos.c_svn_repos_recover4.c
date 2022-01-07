
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int db_path; } ;
typedef TYPE_1__ svn_repos_t ;
struct TYPE_8__ {int action; } ;
typedef TYPE_2__ svn_repos_notify_t ;
typedef int (* svn_repos_notify_func_t ) (void*,TYPE_2__*,int *) ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_repos (TYPE_1__**,char const*,int ,int ,int ,int *,int *,int *) ;
 int svn_fs_recover (int ,int ,void*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_2__* svn_repos_notify_create (int ,int *) ;
 int svn_repos_notify_mutex_acquired ;
 int svn_repos_notify_recover_start ;

svn_error_t *
svn_repos_recover4(const char *path,
                   svn_boolean_t nonblocking,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void * cancel_baton,
                   apr_pool_t *pool)
{
  svn_repos_t *repos;
  apr_pool_t *subpool = svn_pool_create(pool);






  SVN_ERR(get_repos(&repos, path, TRUE, nonblocking,
                    FALSE,
                    ((void*)0),
                    subpool, subpool));

  if (notify_func)
    {


      svn_repos_notify_t *notify = svn_repos_notify_create(
                                    svn_repos_notify_mutex_acquired, subpool);
      notify_func(notify_baton, notify, subpool);

      notify->action = svn_repos_notify_recover_start;
      notify_func(notify_baton, notify, subpool);
    }


  SVN_ERR(svn_fs_recover(repos->db_path, cancel_func, cancel_baton, subpool));


  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
