
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int trail_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_5__ {scalar_t__ data_key; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_6__ {scalar_t__ kind; int fs; int id; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_base__rep_contents_size (scalar_t__*,int ,scalar_t__,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int ,int ,int *,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_base__dag_file_length(svn_filesize_t *length,
                             dag_node_t *file,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  node_revision_t *noderev;


  if (file->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       _("Attempted to get length of a *non*-file node"));


  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, file->fs, file->id,
                                        trail, pool));
  if (noderev->data_key)
    SVN_ERR(svn_fs_base__rep_contents_size(length, file->fs,
                                           noderev->data_key, trail, pool));
  else
    *length = 0;

  return SVN_NO_ERROR;
}
