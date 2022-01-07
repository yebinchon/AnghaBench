
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* fs; } ;
typedef TYPE_2__ svn_fs_x__id_context_t ;
typedef int apr_status_t ;
struct TYPE_4__ {int pool; } ;


 int APR_SUCCESS ;
 int apr_pool_cleanup_kill (int ,TYPE_2__*,int ) ;
 int fs_cleanup ;

__attribute__((used)) static apr_status_t
owner_cleanup(void *baton)
{
  svn_fs_x__id_context_t *context = baton;



  apr_pool_cleanup_kill(context->fs->pool, context, fs_cleanup);

  return APR_SUCCESS;
}
