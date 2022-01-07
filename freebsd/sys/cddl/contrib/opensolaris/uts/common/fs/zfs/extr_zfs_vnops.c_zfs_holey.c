
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ z_size; int z_id; TYPE_1__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
typedef int vnode_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ u_long ;
typedef scalar_t__ offset_t ;
typedef int boolean_t ;
struct TYPE_4__ {int z_os; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int ENXIO ;
 int ESRCH ;
 int SET_ERROR (int ) ;
 TYPE_2__* VTOZ (int *) ;
 scalar_t__ _FIO_SEEK_HOLE ;
 int dmu_offset_next (int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static int
zfs_holey(vnode_t *vp, u_long cmd, offset_t *off)
{
 znode_t *zp = VTOZ(vp);
 uint64_t noff = (uint64_t)*off;
 uint64_t file_sz;
 int error;
 boolean_t hole;

 file_sz = zp->z_size;
 if (noff >= file_sz) {
  return (SET_ERROR(ENXIO));
 }

 if (cmd == _FIO_SEEK_HOLE)
  hole = B_TRUE;
 else
  hole = B_FALSE;

 error = dmu_offset_next(zp->z_zfsvfs->z_os, zp->z_id, hole, &noff);

 if (error == ESRCH)
  return (SET_ERROR(ENXIO));
 if (noff > file_sz) {
  ASSERT(hole);
  noff = file_sz;
 }

 if (noff < *off)
  return (error);
 *off = noff;
 return (error);
}
