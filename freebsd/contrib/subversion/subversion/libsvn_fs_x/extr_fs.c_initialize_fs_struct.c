
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int revprop_generation; int flush_to_disk; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {TYPE_1__* fsap_data; int * vtable; int pool; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int ,int) ;
 int fs_vtable ;

__attribute__((used)) static svn_error_t *
initialize_fs_struct(svn_fs_t *fs)
{
  svn_fs_x__data_t *ffd = apr_pcalloc(fs->pool, sizeof(*ffd));
  ffd->revprop_generation = -1;
  ffd->flush_to_disk = TRUE;

  fs->vtable = &fs_vtable;
  fs->fsap_data = ffd;
  return SVN_NO_ERROR;
}
