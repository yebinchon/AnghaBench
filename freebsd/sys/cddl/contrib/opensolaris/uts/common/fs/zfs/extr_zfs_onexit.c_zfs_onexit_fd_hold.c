
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_onexit_t ;
typedef scalar_t__ minor_t ;
typedef int file_t ;
typedef int cap_rights_t ;
struct TYPE_2__ {int * td_fpop; } ;


 int EBADF ;
 int SET_ERROR (int ) ;
 int cap_no_rights ;
 TYPE_1__* curthread ;
 int devfs_get_cdevpriv (void**) ;
 int * getf (int,int *) ;
 int zfs_onexit_minor_to_state (scalar_t__,int **) ;

int
zfs_onexit_fd_hold(int fd, minor_t *minorp)
{
 file_t *fp, *tmpfp;
 zfs_onexit_t *zo;
 cap_rights_t rights;
 void *data;
 int error;

 fp = getf(fd, &cap_no_rights);
 if (fp == ((void*)0))
  return (SET_ERROR(EBADF));

 tmpfp = curthread->td_fpop;
 curthread->td_fpop = fp;
 error = devfs_get_cdevpriv(&data);
 if (error == 0)
  *minorp = (minor_t)(uintptr_t)data;
 curthread->td_fpop = tmpfp;
 if (error != 0)
  return (SET_ERROR(EBADF));
 return (zfs_onexit_minor_to_state(*minorp, &zo));
}
