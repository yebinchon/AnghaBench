
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;


 int SVN_ERR_FS_ALREADY_OPEN ;
 int SVN_ERR_FS_NOT_OPEN ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int ,int ) ;

svn_error_t *
svn_fs__check_fs(svn_fs_t *fs,
                 svn_boolean_t expect_open)
{
  if ((expect_open && fs->fsap_data)
      || ((! expect_open) && (! fs->fsap_data)))
    return SVN_NO_ERROR;
  if (expect_open)
    return svn_error_create(SVN_ERR_FS_NOT_OPEN, 0,
                            _("Filesystem object has not been opened yet"));
  else
    return svn_error_create(SVN_ERR_FS_ALREADY_OPEN, 0,
                            _("Filesystem object already open"));
}
