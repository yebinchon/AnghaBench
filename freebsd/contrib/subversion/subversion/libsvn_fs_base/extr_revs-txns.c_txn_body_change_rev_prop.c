
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct change_rev_prop_args {int value; int old_value_p; int name; int rev; } ;


 int * svn_fs_base__set_rev_prop (int ,int ,int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_change_rev_prop(void *baton, trail_t *trail)
{
  struct change_rev_prop_args *args = baton;

  return svn_fs_base__set_rev_prop(trail->fs, args->rev,
                                   args->name, args->old_value_p, args->value,
                                   trail, trail->pool);
}
