
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_FS_CORRUPT ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ,char const*,char const*) ;

__attribute__((used)) static svn_error_t *
err_corrupt_lockfile(const char *fs_path,
                     const char *path)
{
  return
    svn_error_createf(
     SVN_ERR_FS_CORRUPT, 0,
     _("Corrupt lockfile for path '%s' in filesystem '%s'"),
     path, fs_path);
}
