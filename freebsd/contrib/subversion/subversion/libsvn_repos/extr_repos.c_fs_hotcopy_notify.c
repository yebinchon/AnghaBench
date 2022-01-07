
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* svn_revnum_t ;
struct TYPE_4__ {void* end_revision; void* start_revision; } ;
typedef TYPE_1__ svn_repos_notify_t ;
struct fs_hotcopy_notify_baton_t {int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;} ;
typedef int apr_pool_t ;


 int stub1 (int ,TYPE_1__*,int *) ;
 TYPE_1__* svn_repos_notify_create (int ,int *) ;
 int svn_repos_notify_hotcopy_rev_range ;

__attribute__((used)) static void
fs_hotcopy_notify(void *baton,
                  svn_revnum_t start_revision,
                  svn_revnum_t end_revision,
                  apr_pool_t *pool)
{
  struct fs_hotcopy_notify_baton_t *fs_baton = baton;
  svn_repos_notify_t *notify;

  notify = svn_repos_notify_create(svn_repos_notify_hotcopy_rev_range, pool);
  notify->start_revision = start_revision;
  notify->end_revision = end_revision;

  fs_baton->notify_func(fs_baton->notify_baton, notify, pool);
}
