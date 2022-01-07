
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;


 int SVN_ERR_FS_TRANSACTION_NOT_MUTABLE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,char const*,int ) ;

svn_error_t *
svn_fs_base__err_txn_not_mutable(svn_fs_t *fs, const char *txn)
{
  return
    svn_error_createf
    (SVN_ERR_FS_TRANSACTION_NOT_MUTABLE, 0,
     _("Cannot modify transaction named '%s' in filesystem '%s'"),
     txn, fs->path);
}
