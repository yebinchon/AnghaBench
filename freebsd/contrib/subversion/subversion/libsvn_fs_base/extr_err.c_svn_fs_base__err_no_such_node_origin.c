
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_NO_SUCH_NODE_ORIGIN ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,char const*,int ) ;

svn_error_t *
svn_fs_base__err_no_such_node_origin(svn_fs_t *fs, const char *node_id)
{
  return
    svn_error_createf
    (SVN_ERR_FS_NO_SUCH_NODE_ORIGIN, 0,
     _("No record in 'node-origins' table for node id '%s' in "
       "filesystem '%s'"), node_id, fs->path);
}
