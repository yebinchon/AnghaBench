
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_GUID ;
 scalar_t__ fnvlist_lookup_uint64 (int *,int ) ;

__attribute__((used)) static nvlist_t *
spa_nvlist_lookup_by_guid(nvlist_t **nvpp, int count, uint64_t target_guid)
{
 for (int i = 0; i < count; i++) {
  uint64_t guid =
      fnvlist_lookup_uint64(nvpp[i], ZPOOL_CONFIG_GUID);

  if (guid == target_guid)
   return (nvpp[i]);
 }

 return (((void*)0));
}
