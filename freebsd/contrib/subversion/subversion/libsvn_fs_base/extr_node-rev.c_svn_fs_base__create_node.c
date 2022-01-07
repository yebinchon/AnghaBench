
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_7__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_8__ {scalar_t__ format; } ;
typedef TYPE_2__ base_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__id_node_id (int *) ;
 int svn_fs_bdb__new_node_id (int **,TYPE_1__*,char const*,char const*,int *,int *) ;
 int svn_fs_bdb__put_node_revision (TYPE_1__*,int *,int *,int *,int *) ;
 int svn_fs_bdb__set_node_origin (TYPE_1__*,int ,int *,int *,int *) ;

svn_error_t *
svn_fs_base__create_node(const svn_fs_id_t **id_p,
                         svn_fs_t *fs,
                         node_revision_t *noderev,
                         const char *copy_id,
                         const char *txn_id,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  svn_fs_id_t *id;
  base_fs_data_t *bfd = fs->fsap_data;


  SVN_ERR(svn_fs_bdb__new_node_id(&id, fs, copy_id, txn_id, trail, pool));


  SVN_ERR(svn_fs_bdb__put_node_revision(fs, id, noderev, trail, pool));



  if (bfd->format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT)
    {
      SVN_ERR(svn_fs_bdb__set_node_origin(fs, svn_fs_base__id_node_id(id),
                                          id, trail, pool));
    }

  *id_p = id;
  return SVN_NO_ERROR;
}
