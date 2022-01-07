
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_lock_t ;
typedef int svn_error_t ;
typedef int svn_dirent_t ;
struct TYPE_4__ {int fs_base_path; int list_baton; int (* list_func ) (int ,char const*,int *,int const*,int ,int *,int *,int *) ;TYPE_1__* ctx; scalar_t__ locks; } ;
typedef TYPE_2__ receiver_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int cancel_baton; int (* cancel_func ) (int ) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ) ;
 int stub2 (int ,char const*,int *,int const*,int ,int *,int *,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 int * svn_hash_gets (scalar_t__,char const*) ;

__attribute__((used)) static svn_error_t *
list_receiver(const char *rel_path,
              svn_dirent_t *dirent,
              void *baton,
              apr_pool_t *pool)
{
  receiver_baton_t *b = baton;
  const svn_lock_t *lock = ((void*)0);


  rel_path = svn_dirent_skip_ancestor(b->fs_base_path, rel_path);

  if (b->locks)
    {
      const char *abs_path = svn_dirent_join(b->fs_base_path, rel_path, pool);
      lock = svn_hash_gets(b->locks, abs_path);
    }

  if (b->ctx->cancel_func)
    SVN_ERR(b->ctx->cancel_func(b->ctx->cancel_baton));

  SVN_ERR(b->list_func(b->list_baton, rel_path, dirent, lock,
                       b->fs_base_path, ((void*)0), ((void*)0), pool));

  return SVN_NO_ERROR;
}
