
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;
typedef int objset_t ;


 int B_TRUE ;
 int DMU_OST_ZFS ;
 int ENAMETOOLONG ;
 int KM_SLEEP ;
 scalar_t__ MNAMELEN ;
 int SET_ERROR (int ) ;
 int dmu_objset_disown (int *,int *) ;
 int dmu_objset_own (char const*,int ,int ,int *,int **) ;
 int kmem_free (int *,int) ;
 int * kmem_zalloc (int,int ) ;
 scalar_t__ strlen (char const*) ;
 int zfsvfs_create_impl (int **,int *,int *) ;

int
zfsvfs_create(const char *osname, zfsvfs_t **zfvp)
{
 objset_t *os;
 zfsvfs_t *zfsvfs;
 int error;
 if (strlen(osname) >= MNAMELEN)
  return (SET_ERROR(ENAMETOOLONG));

 zfsvfs = kmem_zalloc(sizeof (zfsvfs_t), KM_SLEEP);






 error = dmu_objset_own(osname, DMU_OST_ZFS, B_TRUE, zfsvfs, &os);
 if (error != 0) {
  kmem_free(zfsvfs, sizeof (zfsvfs_t));
  return (error);
 }

 error = zfsvfs_create_impl(zfvp, zfsvfs, os);
 if (error != 0) {
  dmu_objset_disown(os, zfsvfs);
 }
 return (error);
}
