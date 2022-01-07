
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_bdb__new_successor_id (int **,int *,int const*,char const*,char const*,int *,int *) ;
 int svn_fs_bdb__put_node_revision (int *,int *,int *,int *,int *) ;

svn_error_t *
svn_fs_base__create_successor(const svn_fs_id_t **new_id_p,
                              svn_fs_t *fs,
                              const svn_fs_id_t *old_id,
                              node_revision_t *new_noderev,
                              const char *copy_id,
                              const char *txn_id,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  svn_fs_id_t *new_id;


  SVN_ERR(svn_fs_bdb__new_successor_id(&new_id, fs, old_id, copy_id,
                                       txn_id, trail, pool));


  SVN_ERR(svn_fs_bdb__put_node_revision(fs, new_id, new_noderev,
                                        trail, pool));

  *new_id_p = new_id;
  return SVN_NO_ERROR;
}
