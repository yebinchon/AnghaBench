
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; int * vtable; int pool; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int flush_to_disk; scalar_t__ revprop_prefix; int use_log_addressing; } ;
typedef TYPE_2__ fs_fs_data_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_2__* apr_pcalloc (int ,int) ;
 int fs_vtable ;

__attribute__((used)) static svn_error_t *
initialize_fs_struct(svn_fs_t *fs)
{
  fs_fs_data_t *ffd = apr_pcalloc(fs->pool, sizeof(*ffd));
  ffd->use_log_addressing = FALSE;
  ffd->revprop_prefix = 0;
  ffd->flush_to_disk = TRUE;

  fs->vtable = &fs_vtable;
  fs->fsap_data = ffd;
  return SVN_NO_ERROR;
}
