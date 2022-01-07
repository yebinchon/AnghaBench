
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; int pool; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;


 int SVN_ERR_FS_NO_SUCH_CHECKSUM_REP ;
 int _ (char*) ;
 int svn_checksum_to_cstring_display (int *,int ) ;
 int * svn_error_createf (int ,int ,int ,int ,int ) ;

svn_error_t *
svn_fs_base__err_no_such_checksum_rep(svn_fs_t *fs, svn_checksum_t *checksum)
{
  return
    svn_error_createf
    (SVN_ERR_FS_NO_SUCH_CHECKSUM_REP, 0,
     _("No record in 'checksum-reps' table for checksum '%s' in "
       "filesystem '%s'"), svn_checksum_to_cstring_display(checksum,
                                                           fs->pool),
                           fs->path);
}
