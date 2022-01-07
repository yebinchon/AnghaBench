
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int db_path; int path; } ;
typedef TYPE_1__ svn_repos_t ;
struct TYPE_8__ {int action; } ;
typedef TYPE_2__ svn_repos_notify_t ;
typedef int (* svn_repos_notify_func_t ) (void*,TYPE_2__*,int *) ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct fs_upgrade_notify_baton_t {void* notify_baton; int (* notify_func ) (void*,TYPE_2__*,int *) ;} ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS__FORMAT ;
 int SVN_REPOS__FORMAT_NUMBER ;
 int TRUE ;
 int * fs_upgrade_notify ;
 int get_repos (TYPE_1__**,char const*,int ,int ,int ,int *,int *,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_fs_upgrade2 (int ,int *,struct fs_upgrade_notify_baton_t*,int *,int *,int *) ;
 int svn_io_read_version_file (int*,char const*,int *) ;
 int svn_io_write_version_file (char const*,int,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_2__* svn_repos_notify_create (int ,int *) ;
 int svn_repos_notify_mutex_acquired ;
 int svn_repos_notify_upgrade_start ;

svn_error_t *
svn_repos_upgrade2(const char *path,
                   svn_boolean_t nonblocking,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   apr_pool_t *pool)
{
  svn_repos_t *repos;
  const char *format_path;
  int format;
  apr_pool_t *subpool = svn_pool_create(pool);

  struct fs_upgrade_notify_baton_t fs_notify_baton;
  fs_notify_baton.notify_func = notify_func;
  fs_notify_baton.notify_baton = notify_baton;






  SVN_ERR(get_repos(&repos, path, TRUE, nonblocking, FALSE, ((void*)0), subpool,
                    subpool));

  if (notify_func)
    {


      svn_repos_notify_t *notify = svn_repos_notify_create(
                                    svn_repos_notify_mutex_acquired, subpool);
      notify_func(notify_baton, notify, subpool);

      notify->action = svn_repos_notify_upgrade_start;
      notify_func(notify_baton, notify, subpool);
    }





  format_path = svn_dirent_join(repos->path, SVN_REPOS__FORMAT, subpool);
  SVN_ERR(svn_io_read_version_file(&format, format_path, subpool));
  SVN_ERR(svn_io_write_version_file(format_path, format, subpool));


  SVN_ERR(svn_fs_upgrade2(repos->db_path,
                          notify_func ? fs_upgrade_notify : ((void*)0),
                          &fs_notify_baton, ((void*)0), ((void*)0), subpool));


  SVN_ERR(svn_io_write_version_file(format_path, SVN_REPOS__FORMAT_NUMBER,
                                    subpool));


  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
