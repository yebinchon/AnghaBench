
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_LOG ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;

boolean_t
zfs_allocatable_devs(nvlist_t *nv)
{
 uint64_t is_log;
 uint_t c;
 nvlist_t **child;
 uint_t children;

 if (nvlist_lookup_nvlist_array(nv, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0) {
  return (B_FALSE);
 }
 for (c = 0; c < children; c++) {
  is_log = 0;
  (void) nvlist_lookup_uint64(child[c], ZPOOL_CONFIG_IS_LOG,
      &is_log);
  if (!is_log)
   return (B_TRUE);
 }
 return (B_FALSE);
}
