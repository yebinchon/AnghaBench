
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int SET_ERROR (int ) ;
 int dmu_objset_remap_indirects (char const*) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int
zfs_ioc_remap(const char *fsname, nvlist_t *innvl, nvlist_t *outnvl)
{
 if (strchr(fsname, '@') ||
     strchr(fsname, '%'))
  return (SET_ERROR(EINVAL));

 return (dmu_objset_remap_indirects(fsname));
}
