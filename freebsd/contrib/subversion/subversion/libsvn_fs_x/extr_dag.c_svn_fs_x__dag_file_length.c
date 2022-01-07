
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_4__ {TYPE_2__* node_revision; } ;
typedef TYPE_1__ dag_node_t ;
struct TYPE_5__ {scalar_t__ kind; } ;


 int SVN_ERR_FS_NOT_FILE ;
 int * svn_error_createf (int ,int *,char*) ;
 int * svn_fs_x__file_length (int *,TYPE_2__*) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_x__dag_file_length(svn_filesize_t *length,
                          dag_node_t *file)
{

  if (file->node_revision->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to get length of a *non*-file node");

  return svn_fs_x__file_length(length, file->node_revision);
}
