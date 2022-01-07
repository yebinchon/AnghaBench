
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_5__ {int * vfs_data; } ;
typedef TYPE_1__ vfs_t ;
typedef int objset_t ;


 int ESRCH ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int getzfsvfs_impl (int *,TYPE_1__**) ;
 int vfs_busy (TYPE_1__*,int ) ;
 int vfs_rel (TYPE_1__*) ;

int
getzfsvfs(const char *dsname, zfsvfs_t **zfvp)
{
 objset_t *os;
 vfs_t *vfsp;
 int error;

 error = dmu_objset_hold(dsname, FTAG, &os);
 if (error != 0)
  return (error);
 error = getzfsvfs_impl(os, &vfsp);
 dmu_objset_rele(os, FTAG);
 if (error != 0)
  return (error);

 error = vfs_busy(vfsp, 0);
 vfs_rel(vfsp);
 if (error != 0) {
  *zfvp = ((void*)0);
  error = SET_ERROR(ESRCH);
 } else {
  *zfvp = vfsp->vfs_data;
 }
 return (error);
}
