
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pool; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int (* set_svn_fs_open ) (TYPE_1__*,int ) ;int (* create ) (TYPE_1__*,char const*,int ,int ,int ) ;} ;
typedef TYPE_2__ fs_library_vtable_t ;


 int APR_OS_DEFAULT ;
 int SVN_ERR (int ) ;
 int SVN_FS_TYPE_BDB ;
 int * SVN_NO_ERROR ;
 int common_pool ;
 int common_pool_lock ;
 int get_library_vtable (TYPE_2__**,int ,int ) ;
 int stub1 (TYPE_1__*,char const*,int ,int ,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int svn_fs_open2 ;
 int svn_io_dir_make_sgid (char const*,int ,int ) ;
 int write_fs_type (char const*,int ,int ) ;

svn_error_t *
svn_fs_create_berkeley(svn_fs_t *fs, const char *path)
{
  fs_library_vtable_t *vtable;

  SVN_ERR(get_library_vtable(&vtable, SVN_FS_TYPE_BDB, fs->pool));


  SVN_ERR(svn_io_dir_make_sgid(path, APR_OS_DEFAULT, fs->pool));
  SVN_ERR(write_fs_type(path, SVN_FS_TYPE_BDB, fs->pool));


  SVN_ERR(vtable->create(fs, path, common_pool_lock, fs->pool, common_pool));
  SVN_ERR(vtable->set_svn_fs_open(fs, svn_fs_open2));

  return SVN_NO_ERROR;
}
