
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trail_t ;
struct TYPE_6__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_7__ {scalar_t__ format; } ;
typedef TYPE_2__ base_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT ;
 int svn_fs_base__id_node_id (int const*) ;
 int svn_fs_bdb__delete_node_origin (TYPE_1__*,int ,int *,int *) ;
 int * svn_fs_bdb__delete_nodes_entry (TYPE_1__*,int const*,int *,int *) ;

svn_error_t *
svn_fs_base__delete_node_revision(svn_fs_t *fs,
                                  const svn_fs_id_t *id,
                                  svn_boolean_t origin_also,
                                  trail_t *trail,
                                  apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;






  if (origin_also && (bfd->format >= SVN_FS_BASE__MIN_NODE_ORIGINS_FORMAT))
    {
      SVN_ERR(svn_fs_bdb__delete_node_origin(fs, svn_fs_base__id_node_id(id),
                                             trail, pool));
    }

  return svn_fs_bdb__delete_nodes_entry(fs, id, trail, pool);
}
