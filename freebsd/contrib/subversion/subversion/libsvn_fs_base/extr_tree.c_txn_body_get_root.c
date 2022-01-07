
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct get_root_args {int root; int node; } ;


 int * get_dag (int *,int ,char*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_get_root(void *baton, trail_t *trail)
{
  struct get_root_args *args = baton;
  return get_dag(&(args->node), args->root, "", trail, trail->pool);
}
