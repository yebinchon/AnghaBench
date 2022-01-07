
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_CORRUPT ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,int ,int ) ;

svn_error_t *
svn_fs_base__err_corrupt_fs_revision(svn_fs_t *fs, svn_revnum_t rev)
{
  return svn_error_createf
    (SVN_ERR_FS_CORRUPT, 0,
     _("Corrupt filesystem revision %ld in filesystem '%s'"),
     rev, fs->path);
}
