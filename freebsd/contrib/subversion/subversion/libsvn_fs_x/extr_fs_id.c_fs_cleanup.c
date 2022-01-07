
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int owner; TYPE_1__* fs; int svn_fs_open_; int fs_path; } ;
typedef TYPE_2__ svn_fs_x__id_context_t ;
struct TYPE_7__ {int svn_fs_open_; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
typedef int apr_status_t ;
struct TYPE_5__ {int path; TYPE_3__* fsap_data; } ;


 int APR_SUCCESS ;
 int apr_pool_cleanup_kill (int ,TYPE_2__*,int ) ;
 int apr_pstrdup (int ,int ) ;
 int owner_cleanup ;

__attribute__((used)) static apr_status_t
fs_cleanup(void *baton)
{
  svn_fs_x__id_context_t *context = baton;
  svn_fs_x__data_t *ffd = context->fs->fsap_data;


  context->fs_path = apr_pstrdup(context->owner, context->fs->path);
  context->svn_fs_open_ = ffd->svn_fs_open_;
  context->fs = ((void*)0);




  apr_pool_cleanup_kill(context->owner, context, owner_cleanup);

  return APR_SUCCESS;
}
