
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned char const* vic_mapping_object; unsigned char const* vic_births_object; unsigned char const* vic_prev_indirect_vdev; } ;
struct TYPE_8__ {int v_id; int v_ashift; int v_psize; int v_nparity; char* v_name; int v_islog; int v_nchildren; int v_children; int v_state; struct TYPE_8__* v_top; TYPE_2__ vdev_indirect_config; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_indirect_config_t ;
typedef int uint64_t ;


 int DATA_TYPE_NVLIST_ARRAY ;
 int DATA_TYPE_STRING ;
 int DATA_TYPE_UINT64 ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int VDEV_LABEL_END_SIZE ;
 int VDEV_LABEL_START_SIZE ;
 int VDEV_STATE_CANT_OPEN ;
 int VDEV_STATE_DEGRADED ;
 int VDEV_STATE_FAULTED ;
 int VDEV_STATE_HEALTHY ;
 int VDEV_STATE_OFFLINE ;
 int VDEV_STATE_REMOVED ;
 char* VDEV_TYPE_DISK ;
 char* VDEV_TYPE_FILE ;
 char* VDEV_TYPE_INDIRECT ;
 char* VDEV_TYPE_MIRROR ;
 char* VDEV_TYPE_RAIDZ ;
 char* VDEV_TYPE_REPLACING ;
 int ZPOOL_CONFIG_ASHIFT ;
 int ZPOOL_CONFIG_ASIZE ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_DEGRADED ;
 int ZPOOL_CONFIG_FAULTED ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_ID ;
 int ZPOOL_CONFIG_INDIRECT_BIRTHS ;
 int ZPOOL_CONFIG_INDIRECT_OBJECT ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_NOT_PRESENT ;
 int ZPOOL_CONFIG_NPARITY ;
 int ZPOOL_CONFIG_OFFLINE ;
 int ZPOOL_CONFIG_PATH ;
 int ZPOOL_CONFIG_PREV_INDIRECT_VDEV ;
 int ZPOOL_CONFIG_REMOVED ;
 int ZPOOL_CONFIG_TYPE ;
 int asprintf (char**,char*,char const*,int,...) ;
 int nvlist_find (unsigned char const*,int ,int ,int*,...) ;
 unsigned char* nvlist_next (unsigned char const*) ;
 int printf (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int v_childlink ;
 TYPE_1__* vdev_create (int,int ) ;
 int vdev_disk_read ;
 TYPE_1__* vdev_find (int) ;
 int vdev_indirect_read ;
 int vdev_mirror_read ;
 int vdev_raidz_read ;
 int vdev_replacing_read ;

__attribute__((used)) static int
vdev_init_from_nvlist(const unsigned char *nvlist, vdev_t *pvdev,
    vdev_t **vdevp, int is_newer)
{
 int rc;
 uint64_t guid, id, ashift, asize, nparity;
 const char *type;
 const char *path;
 vdev_t *vdev, *kid;
 const unsigned char *kids;
 int nkids, i, is_new;
 uint64_t is_offline, is_faulted, is_degraded, is_removed, isnt_present;
 uint64_t is_log;

 if (nvlist_find(nvlist, ZPOOL_CONFIG_GUID, DATA_TYPE_UINT64,
     ((void*)0), &guid)
     || nvlist_find(nvlist, ZPOOL_CONFIG_ID, DATA_TYPE_UINT64, ((void*)0), &id)
     || nvlist_find(nvlist, ZPOOL_CONFIG_TYPE, DATA_TYPE_STRING,
     ((void*)0), &type)) {
  printf("ZFS: can't find vdev details\n");
  return (ENOENT);
 }

 if (strcmp(type, VDEV_TYPE_MIRROR)
     && strcmp(type, VDEV_TYPE_DISK)



     && strcmp(type, VDEV_TYPE_RAIDZ)
     && strcmp(type, VDEV_TYPE_INDIRECT)
     && strcmp(type, VDEV_TYPE_REPLACING)) {
  printf("ZFS: can only boot from disk, mirror, raidz1, raidz2 and raidz3 vdevs\n");
  return (EIO);
 }

 is_offline = is_removed = is_faulted = is_degraded = isnt_present = 0;
 is_log = 0;

 nvlist_find(nvlist, ZPOOL_CONFIG_OFFLINE, DATA_TYPE_UINT64, ((void*)0),
     &is_offline);
 nvlist_find(nvlist, ZPOOL_CONFIG_REMOVED, DATA_TYPE_UINT64, ((void*)0),
     &is_removed);
 nvlist_find(nvlist, ZPOOL_CONFIG_FAULTED, DATA_TYPE_UINT64, ((void*)0),
     &is_faulted);
 nvlist_find(nvlist, ZPOOL_CONFIG_DEGRADED, DATA_TYPE_UINT64, ((void*)0),
     &is_degraded);
 nvlist_find(nvlist, ZPOOL_CONFIG_NOT_PRESENT, DATA_TYPE_UINT64, ((void*)0),
     &isnt_present);
 nvlist_find(nvlist, ZPOOL_CONFIG_IS_LOG, DATA_TYPE_UINT64, ((void*)0),
     &is_log);

 vdev = vdev_find(guid);
 if (!vdev) {
  is_new = 1;

  if (!strcmp(type, VDEV_TYPE_MIRROR))
   vdev = vdev_create(guid, vdev_mirror_read);
  else if (!strcmp(type, VDEV_TYPE_RAIDZ))
   vdev = vdev_create(guid, vdev_raidz_read);
  else if (!strcmp(type, VDEV_TYPE_REPLACING))
   vdev = vdev_create(guid, vdev_replacing_read);
  else if (!strcmp(type, VDEV_TYPE_INDIRECT)) {
   vdev_indirect_config_t *vic;

   vdev = vdev_create(guid, vdev_indirect_read);
   vdev->v_state = VDEV_STATE_HEALTHY;
   vic = &vdev->vdev_indirect_config;

   nvlist_find(nvlist,
       ZPOOL_CONFIG_INDIRECT_OBJECT, DATA_TYPE_UINT64,
       ((void*)0), &vic->vic_mapping_object);
   nvlist_find(nvlist,
       ZPOOL_CONFIG_INDIRECT_BIRTHS, DATA_TYPE_UINT64,
       ((void*)0), &vic->vic_births_object);
   nvlist_find(nvlist,
       ZPOOL_CONFIG_PREV_INDIRECT_VDEV, DATA_TYPE_UINT64,
       ((void*)0), &vic->vic_prev_indirect_vdev);
  } else
   vdev = vdev_create(guid, vdev_disk_read);

  vdev->v_id = id;
  vdev->v_top = pvdev != ((void*)0) ? pvdev : vdev;
  if (nvlist_find(nvlist, ZPOOL_CONFIG_ASHIFT,
   DATA_TYPE_UINT64, ((void*)0), &ashift) == 0) {
   vdev->v_ashift = ashift;
  } else {
   vdev->v_ashift = 0;
  }
  if (nvlist_find(nvlist, ZPOOL_CONFIG_ASIZE,
      DATA_TYPE_UINT64, ((void*)0), &asize) == 0) {
   vdev->v_psize = asize +
       VDEV_LABEL_START_SIZE + VDEV_LABEL_END_SIZE;
  }
  if (nvlist_find(nvlist, ZPOOL_CONFIG_NPARITY,
   DATA_TYPE_UINT64, ((void*)0), &nparity) == 0) {
   vdev->v_nparity = nparity;
  } else {
   vdev->v_nparity = 0;
  }
  if (nvlist_find(nvlist, ZPOOL_CONFIG_PATH,
    DATA_TYPE_STRING, ((void*)0), &path) == 0) {
   if (strncmp(path, "/dev/", 5) == 0)
    path += 5;
   vdev->v_name = strdup(path);
  } else {
   char *name;

   if (!strcmp(type, "raidz")) {
    if (vdev->v_nparity < 1 ||
        vdev->v_nparity > 3) {
     printf("ZFS: can only boot from disk, "
         "mirror, raidz1, raidz2 and raidz3 "
         "vdevs\n");
     return (EIO);
    }
    asprintf(&name, "%s%d-%jd", type,
        vdev->v_nparity, id);
   } else {
    asprintf(&name, "%s-%jd", type, id);
   }
   if (name == ((void*)0))
    return (ENOMEM);
   vdev->v_name = name;
  }
  vdev->v_islog = is_log == 1;
 } else {
  is_new = 0;
 }

 if (is_new || is_newer) {





  if (is_offline)
   vdev->v_state = VDEV_STATE_OFFLINE;
  else if (is_removed)
   vdev->v_state = VDEV_STATE_REMOVED;
  else if (is_faulted)
   vdev->v_state = VDEV_STATE_FAULTED;
  else if (is_degraded)
   vdev->v_state = VDEV_STATE_DEGRADED;
  else if (isnt_present)
   vdev->v_state = VDEV_STATE_CANT_OPEN;
 }

 rc = nvlist_find(nvlist, ZPOOL_CONFIG_CHILDREN, DATA_TYPE_NVLIST_ARRAY,
     &nkids, &kids);



 if (rc == 0) {
  vdev->v_nchildren = nkids;
  for (i = 0; i < nkids; i++) {
   rc = vdev_init_from_nvlist(kids, vdev, &kid, is_newer);
   if (rc)
    return (rc);
   if (is_new)
    STAILQ_INSERT_TAIL(&vdev->v_children, kid,
         v_childlink);
   kids = nvlist_next(kids);
  }
 } else {
  vdev->v_nchildren = 0;
 }

 if (vdevp)
  *vdevp = vdev;
 return (0);
}
