
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_lock_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_dirent_t ;
struct print_baton {int locks; int files; int directories; TYPE_1__* ctx; } ;
typedef int apr_pool_t ;
struct TYPE_4__ {int cancel_baton; int (* cancel_func ) (int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_error_t *
print_dirent(void *baton,
             const char *path,
             const svn_dirent_t *dirent,
             const svn_lock_t *lock,
             const char *abs_path,
             const char *external_parent_url,
             const char *external_target,
             apr_pool_t *pool)
{
  struct print_baton *pb = baton;

  if (pb->ctx->cancel_func)
    SVN_ERR(pb->ctx->cancel_func(pb->ctx->cancel_baton));

  if (dirent->kind == svn_node_dir)
    pb->directories++;
  if (dirent->kind == svn_node_file)
    pb->files++;
  if (lock)
    pb->locks++;

  return SVN_NO_ERROR;
}
