
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_6__ {int path; int pool; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_ID_NOT_FOUND ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,int ,int ) ;
 TYPE_1__* svn_fs_x__id_unparse (int const*,int ) ;

__attribute__((used)) static svn_error_t *
err_dangling_id(svn_fs_t *fs,
                const svn_fs_x__id_t *id)
{
  svn_string_t *id_str = svn_fs_x__id_unparse(id, fs->pool);
  return svn_error_createf
    (SVN_ERR_FS_ID_NOT_FOUND, 0,
     _("Reference to non-existent node '%s' in filesystem '%s'"),
     id_str->data, fs->path);
}
