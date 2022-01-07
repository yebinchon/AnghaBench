
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_int64_t ;
struct TYPE_4__ {int mergeinfo_count; } ;



apr_int64_t
svn_fs_x__dag_get_mergeinfo_count(dag_node_t *node)
{
  return node->node_revision->mergeinfo_count;
}
