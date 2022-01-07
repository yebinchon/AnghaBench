
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int parentname ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 scalar_t__ ZPL_VERSION ;
 scalar_t__ ZPL_VERSION_FUID ;
 scalar_t__ ZPL_VERSION_SA ;
 int dmu_objset_hold (char*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 int spa_close (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 scalar_t__ spa_version (int *) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 int zfs_fill_zplprops_impl (int *,scalar_t__,int,int,int *,int *,int*) ;
 scalar_t__ zfs_zpl_version_map (scalar_t__) ;

__attribute__((used)) static int
zfs_fill_zplprops(const char *dataset, nvlist_t *createprops,
    nvlist_t *zplprops, boolean_t *is_ci)
{
 boolean_t fuids_ok, sa_ok;
 uint64_t zplver = ZPL_VERSION;
 objset_t *os = ((void*)0);
 char parentname[ZFS_MAX_DATASET_NAME_LEN];
 char *cp;
 spa_t *spa;
 uint64_t spa_vers;
 int error;

 (void) strlcpy(parentname, dataset, sizeof (parentname));
 cp = strrchr(parentname, '/');
 ASSERT(cp != ((void*)0));
 cp[0] = '\0';

 if ((error = spa_open(dataset, &spa, FTAG)) != 0)
  return (error);

 spa_vers = spa_version(spa);
 spa_close(spa, FTAG);

 zplver = zfs_zpl_version_map(spa_vers);
 fuids_ok = (zplver >= ZPL_VERSION_FUID);
 sa_ok = (zplver >= ZPL_VERSION_SA);




 if ((error = dmu_objset_hold(parentname, FTAG, &os)) != 0)
  return (error);

 error = zfs_fill_zplprops_impl(os, zplver, fuids_ok, sa_ok, createprops,
     zplprops, is_ci);
 dmu_objset_rele(os, FTAG);
 return (error);
}
