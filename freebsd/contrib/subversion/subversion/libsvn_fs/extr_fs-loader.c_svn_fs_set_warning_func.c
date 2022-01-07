
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_warning_callback_t ;
struct TYPE_3__ {void* warning_baton; int warning; } ;
typedef TYPE_1__ svn_fs_t ;



void
svn_fs_set_warning_func(svn_fs_t *fs, svn_fs_warning_callback_t warning,
                        void *warning_baton)
{
  fs->warning = warning;
  fs->warning_baton = warning_baton;
}
