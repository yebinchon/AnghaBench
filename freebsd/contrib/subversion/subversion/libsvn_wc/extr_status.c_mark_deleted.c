
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int repos_node_status; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
struct status_baton {int real_status_baton; int * (* real_status_func ) (int ,char const*,TYPE_1__*,int *) ;} ;
typedef int apr_pool_t ;


 int * stub1 (int ,char const*,TYPE_1__*,int *) ;
 TYPE_1__* svn_wc_dup_status3 (TYPE_1__ const*,int *) ;
 int svn_wc_status_deleted ;

__attribute__((used)) static svn_error_t *
mark_deleted(void *baton,
             const char *local_abspath,
             const svn_wc_status3_t *status,
             apr_pool_t *scratch_pool)
{
  struct status_baton *sb = baton;
  svn_wc_status3_t *new_status = svn_wc_dup_status3(status, scratch_pool);
  new_status->repos_node_status = svn_wc_status_deleted;
  return sb->real_status_func(sb->real_status_baton, local_abspath,
                              new_status, scratch_pool);
}
