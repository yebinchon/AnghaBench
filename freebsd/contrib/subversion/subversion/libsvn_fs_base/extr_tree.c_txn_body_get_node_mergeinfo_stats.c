
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct get_node_mergeinfo_stats_baton {int node; int child_mergeinfo_count; int has_mergeinfo; int path; int root; } ;


 int SVN_ERR (int ) ;
 int get_dag (int *,int ,int ,TYPE_1__*,int ) ;
 int * svn_fs_base__dag_get_mergeinfo_stats (int *,int *,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_get_node_mergeinfo_stats(void *baton, trail_t *trail)
{
  struct get_node_mergeinfo_stats_baton *args = baton;

  SVN_ERR(get_dag(&(args->node), args->root, args->path,
                  trail, trail->pool));
  return svn_fs_base__dag_get_mergeinfo_stats(&(args->has_mergeinfo),
                                              &(args->child_mergeinfo_count),
                                              args->node, trail,
                                              trail->pool);
}
