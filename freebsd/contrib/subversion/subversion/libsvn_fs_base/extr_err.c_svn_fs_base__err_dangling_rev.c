
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int uuid; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,int ,int ) ;

svn_error_t *
svn_fs_base__err_dangling_rev(svn_fs_t *fs, svn_revnum_t rev)
{

  return svn_error_createf
    (SVN_ERR_FS_NO_SUCH_REVISION, 0,
     _("No such revision %ld in filesystem '%s'"),
     rev, fs->uuid);
}
