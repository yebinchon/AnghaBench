
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_fs_pack_notify_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct pack_notify_wrapper_baton {void* notify_baton; int notify_func; } ;
typedef int apr_pool_t ;


 int pack_notify_wrapper_func ;
 int * svn_repos_fs_pack2 (int *,int ,struct pack_notify_wrapper_baton*,int ,void*,int *) ;

svn_error_t *
svn_repos_fs_pack(svn_repos_t *repos,
                  svn_fs_pack_notify_t notify_func,
                  void *notify_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *pool)
{
  struct pack_notify_wrapper_baton pnwb;

  pnwb.notify_func = notify_func;
  pnwb.notify_baton = notify_baton;

  return svn_repos_fs_pack2(repos, pack_notify_wrapper_func, &pnwb,
                            cancel_func, cancel_baton, pool);
}
