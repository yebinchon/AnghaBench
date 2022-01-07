
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fsap_data; int * vtable; } ;
typedef TYPE_1__ svn_fs_t ;



__attribute__((used)) static void
uninitialize_fs_struct(svn_fs_t *fs)
{
  fs->vtable = ((void*)0);
  fs->fsap_data = ((void*)0);
}
