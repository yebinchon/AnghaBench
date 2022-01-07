
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_3__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int perror (char*) ;
 scalar_t__ zpool_nextboot (int ,int ,int ,char const*) ;

__attribute__((used)) static int
be_set_nextboot(libbe_handle_t *lbh, nvlist_t *config, uint64_t pool_guid,
    const char *zfsdev)
{
 nvlist_t **child;
 uint64_t vdev_guid;
 int c, children;

 if (nvlist_lookup_nvlist_array(config, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0) {
  for (c = 0; c < children; ++c)
   if (be_set_nextboot(lbh, child[c], pool_guid, zfsdev) != 0)
    return (1);
  return (0);
 }

 if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_GUID,
     &vdev_guid) != 0) {
  return (1);
 }

 if (zpool_nextboot(lbh->lzh, pool_guid, vdev_guid, zfsdev) != 0) {
  perror("ZFS_IOC_NEXTBOOT failed");
  return (1);
 }

 return (0);
}
