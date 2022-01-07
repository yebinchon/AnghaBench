
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
x_set_errcall(svn_fs_t *fs,
              void (*db_errcall_fcn)(const char *errpfx, char *msg))
{

  return SVN_NO_ERROR;
}
