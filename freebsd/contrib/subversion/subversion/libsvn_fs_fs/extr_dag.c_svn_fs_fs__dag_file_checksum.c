
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int node_revision_t ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int get_node_revision (int **,TYPE_1__*) ;
 int * svn_error_createf (int ,int *,char*) ;
 int * svn_fs_fs__file_checksum (int **,int *,int ,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_fs__dag_file_checksum(svn_checksum_t **checksum,
                             dag_node_t *file,
                             svn_checksum_kind_t kind,
                             apr_pool_t *pool)
{
  node_revision_t *noderev;

  if (file->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to get checksum of a *non*-file node");

  SVN_ERR(get_node_revision(&noderev, file));

  return svn_fs_fs__file_checksum(checksum, noderev, kind, pool);
}
