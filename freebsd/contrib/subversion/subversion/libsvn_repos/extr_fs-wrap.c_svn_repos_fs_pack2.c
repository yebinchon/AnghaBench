
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef scalar_t__ svn_repos_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct pack_notify_baton {void* notify_baton; scalar_t__ notify_func; } ;
typedef int apr_pool_t ;


 int * pack_notify_func ;
 int * svn_fs_pack (int ,int *,struct pack_notify_baton*,int ,void*,int *) ;

svn_error_t *
svn_repos_fs_pack2(svn_repos_t *repos,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *pool)
{
  struct pack_notify_baton pnb;

  pnb.notify_func = notify_func;
  pnb.notify_baton = notify_baton;

  return svn_fs_pack(repos->db_path,
                     notify_func ? pack_notify_func : ((void*)0),
                     notify_func ? &pnb : ((void*)0),
                     cancel_func, cancel_baton, pool);
}
