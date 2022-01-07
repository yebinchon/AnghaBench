
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int svn_fs_base__dag_get_fs (int *) ;
 int svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__id_txn_id (int ) ;
 int * svn_fs_base__txn_get_revision (int *,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_base__dag_get_revision(svn_revnum_t *rev,
                              dag_node_t *node,
                              trail_t *trail,
                              apr_pool_t *pool)
{


  return svn_fs_base__txn_get_revision
    (rev, svn_fs_base__dag_get_fs(node),
     svn_fs_base__id_txn_id(svn_fs_base__dag_get_id(node)), trail, pool);
}
