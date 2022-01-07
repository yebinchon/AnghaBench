
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__dag_get_fs (int *) ;
 int * svn_fs_x__dag_get_node (int **,int ,int *,int *,int *) ;
 int svn_fs_x__dir_entry_id (int *,int *,char const*,int *) ;
 int svn_fs_x__id_used (int *) ;

svn_error_t *
svn_fs_x__dag_open(dag_node_t **child_p,
                   dag_node_t *parent,
                   const char *name,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__id_t node_id;


  SVN_ERR(svn_fs_x__dir_entry_id(&node_id, parent, name, scratch_pool));
  if (! svn_fs_x__id_used(&node_id))
    {
      *child_p = ((void*)0);
      return SVN_NO_ERROR;
    }


  return svn_fs_x__dag_get_node(child_p, svn_fs_x__dag_get_fs(parent),
                                &node_id, result_pool, scratch_pool);
}
