
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int node_pool; int fs; int * node_revision; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__set_entry (int ,int ,int *,char const*,int const*,int ,int ,int *) ;
 int svn_fs_x__update_dag_cache (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
set_entry(dag_node_t *parent,
          const char *name,
          const svn_fs_x__id_t *id,
          svn_node_kind_t kind,
          svn_fs_x__txn_id_t txn_id,
          apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *parent_noderev = parent->node_revision;


  SVN_ERR(svn_fs_x__set_entry(parent->fs, txn_id, parent_noderev, name, id,
                              kind, parent->node_pool, scratch_pool));


  svn_fs_x__update_dag_cache(parent);

  return SVN_NO_ERROR;
}
