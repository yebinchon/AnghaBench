
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int boolean_t ;


 int B_TRUE ;
 scalar_t__ DMU_OST_ZFS ;
 int FTAG ;
 int ZFS_PROP_VERSION ;
 scalar_t__ dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 scalar_t__ zfs_get_zplprop (int *,int ,int*) ;

__attribute__((used)) static boolean_t
zpl_earlier_version(const char *name, int version)
{
 objset_t *os;
 boolean_t rc = B_TRUE;

 if (dmu_objset_hold(name, FTAG, &os) == 0) {
  uint64_t zplversion;

  if (dmu_objset_type(os) != DMU_OST_ZFS) {
   dmu_objset_rele(os, FTAG);
   return (B_TRUE);
  }

  if (zfs_get_zplprop(os, ZFS_PROP_VERSION, &zplversion) == 0)
   rc = zplversion < version;
  dmu_objset_rele(os, FTAG);
 }
 return (rc);
}
