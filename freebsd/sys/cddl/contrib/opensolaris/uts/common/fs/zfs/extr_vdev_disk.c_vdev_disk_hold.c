
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* vdev_path; unsigned long long vdev_wholedisk; int vdev_devid_vp; int * vdev_devid; int * vdev_name_vp; int * vdev_tsd; int vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef int ddi_devid_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int RW_WRITER ;
 int SCL_STATE ;
 int ddi_devid_free (int ) ;
 scalar_t__ ddi_devid_str_decode (int *,int *,char**) ;
 int ddi_devid_str_free (char*) ;
 char* kmem_alloc (size_t,int ) ;
 int kmem_free (char*,size_t) ;
 int ldi_vp_from_devid (int ,char*,int *) ;
 int ldi_vp_from_name (char*,int **) ;
 int snprintf (char*,size_t,char*,char*) ;
 int spa_config_held (int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
vdev_disk_hold(vdev_t *vd)
{
 ddi_devid_t devid;
 char *minor;

 ASSERT(spa_config_held(vd->vdev_spa, SCL_STATE, RW_WRITER));




 if (vd->vdev_path == ((void*)0) || vd->vdev_path[0] != '/')
  return;





 if (vd->vdev_tsd != ((void*)0))
  return;

 if (vd->vdev_wholedisk == -1ULL) {
  size_t len = strlen(vd->vdev_path) + 3;
  char *buf = kmem_alloc(len, KM_SLEEP);

  (void) snprintf(buf, len, "%ss0", vd->vdev_path);

  (void) ldi_vp_from_name(buf, &vd->vdev_name_vp);
  kmem_free(buf, len);
 }

 if (vd->vdev_name_vp == ((void*)0))
  (void) ldi_vp_from_name(vd->vdev_path, &vd->vdev_name_vp);

 if (vd->vdev_devid != ((void*)0) &&
     ddi_devid_str_decode(vd->vdev_devid, &devid, &minor) == 0) {
  (void) ldi_vp_from_devid(devid, minor, &vd->vdev_devid_vp);
  ddi_devid_str_free(minor);
  ddi_devid_free(devid);
 }
}
