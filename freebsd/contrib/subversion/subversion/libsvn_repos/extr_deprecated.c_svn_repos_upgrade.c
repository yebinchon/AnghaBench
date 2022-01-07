
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct recover_baton {void* start_callback_baton; int * (* start_callback ) (void*) ;} ;
typedef int apr_pool_t ;


 int recovery_started ;
 int * svn_repos_upgrade2 (char const*,int ,int ,struct recover_baton*,int *) ;

svn_error_t *
svn_repos_upgrade(const char *path,
                  svn_boolean_t nonblocking,
                  svn_error_t *(*start_callback)(void *baton),
                  void *start_callback_baton,
                  apr_pool_t *pool)
{
  struct recover_baton rb;

  rb.start_callback = start_callback;
  rb.start_callback_baton = start_callback_baton;

  return svn_repos_upgrade2(path, nonblocking, recovery_started, &rb, pool);
}
