
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct verify_fs_notify_func_baton_t {TYPE_1__* notify; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;} ;
typedef int apr_pool_t ;
struct TYPE_2__ {int revision; } ;


 int stub1 (int ,TYPE_1__*,int *) ;

__attribute__((used)) static void
verify_fs_notify_func(svn_revnum_t revision,
                       void *baton,
                       apr_pool_t *pool)
{
  struct verify_fs_notify_func_baton_t *notify_baton = baton;

  notify_baton->notify->revision = revision;
  notify_baton->notify_func(notify_baton->notify_baton,
                            notify_baton->notify, pool);
}
