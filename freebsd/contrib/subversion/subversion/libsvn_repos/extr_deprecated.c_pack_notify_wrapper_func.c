
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action; int shard; } ;
typedef TYPE_1__ svn_repos_notify_t ;
struct pack_notify_wrapper_baton {int notify_baton; int (* notify_func ) (int ,int ,scalar_t__,int *) ;} ;
typedef int apr_pool_t ;


 int stub1 (int ,int ,scalar_t__,int *) ;
 int svn_error_clear (int ) ;

__attribute__((used)) static void
pack_notify_wrapper_func(void *baton,
                         const svn_repos_notify_t *notify,
                         apr_pool_t *scratch_pool)
{
  struct pack_notify_wrapper_baton *pnwb = baton;

  svn_error_clear(pnwb->notify_func(pnwb->notify_baton, notify->shard,
                                    notify->action - 3, scratch_pool));
}
