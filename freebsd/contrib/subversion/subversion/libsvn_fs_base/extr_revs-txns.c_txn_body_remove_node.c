
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct remove_node_args {int txn_id; int id; } ;


 int * svn_fs_base__dag_remove_node (int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_remove_node(void *baton, trail_t *trail)
{
  struct remove_node_args *args = baton;
  return svn_fs_base__dag_remove_node(trail->fs, args->id, args->txn_id,
                                      trail, trail->pool);
}
