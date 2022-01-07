
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ revprop_generation; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_5__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_boolean_t ;



__attribute__((used)) static svn_boolean_t
is_generation_valid(svn_fs_t *fs)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  return ffd->revprop_generation >= 0;
}
