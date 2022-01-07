
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct change_txn_prop_args {int value; int name; int id; } ;


 int * svn_fs_base__set_txn_prop (int ,int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_change_txn_prop(void *baton, trail_t *trail)
{
  struct change_txn_prop_args *args = baton;
  return svn_fs_base__set_txn_prop(trail->fs, args->id, args->name,
                                   args->value, trail, trail->pool);
}
