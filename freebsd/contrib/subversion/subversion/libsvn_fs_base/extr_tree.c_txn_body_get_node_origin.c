
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct get_set_node_origin_args {int node_id; int origin_id; } ;


 int * svn_fs_bdb__get_node_origin (int *,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_get_node_origin(void *baton, trail_t *trail)
{
  struct get_set_node_origin_args *args = baton;
  return svn_fs_bdb__get_node_origin(&(args->origin_id), trail->fs,
                                     args->node_id, trail, trail->pool);
}
