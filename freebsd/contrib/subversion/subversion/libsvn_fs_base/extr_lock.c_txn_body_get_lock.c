
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct lock_token_get_args {int path; int lock_p; } ;


 int * svn_fs_base__get_lock_helper (int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_get_lock(void *baton, trail_t *trail)
{
  struct lock_token_get_args *args = baton;
  return svn_fs_base__get_lock_helper(args->lock_p, args->path,
                                      trail, trail->pool);
}
