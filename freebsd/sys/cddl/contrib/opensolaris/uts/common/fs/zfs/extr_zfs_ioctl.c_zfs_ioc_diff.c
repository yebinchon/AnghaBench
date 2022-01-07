
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zc_cookie; int zc_value; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ offset_t ;
struct TYPE_8__ {scalar_t__ f_offset; struct TYPE_8__* f_vnode; } ;
typedef TYPE_2__ file_t ;


 int EBADF ;
 scalar_t__ MAXOFFSET_T ;
 int SET_ERROR (int ) ;
 int cap_write_rights ;
 int curthread ;
 int dmu_diff (int ,int ,TYPE_2__*,scalar_t__*) ;
 int fget_write (int ,int ,int *,TYPE_2__**) ;
 TYPE_2__* getf (int ) ;
 int releasef (int ) ;

__attribute__((used)) static int
zfs_ioc_diff(zfs_cmd_t *zc)
{
 file_t *fp;
 offset_t off;
 int error;




 fget_write(curthread, zc->zc_cookie, &cap_write_rights, &fp);

 if (fp == ((void*)0))
  return (SET_ERROR(EBADF));

 off = fp->f_offset;




 error = dmu_diff(zc->zc_name, zc->zc_value, fp, &off);


 if (off >= 0 && off <= MAXOFFSET_T)
  fp->f_offset = off;
 releasef(zc->zc_cookie);

 return (error);
}
