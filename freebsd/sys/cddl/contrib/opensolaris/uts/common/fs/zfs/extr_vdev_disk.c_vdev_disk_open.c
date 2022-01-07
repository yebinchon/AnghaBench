
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* vs_aux; } ;
struct TYPE_12__ {char* vdev_path; char* vdev_devid; unsigned long long vdev_wholedisk; char* vdev_physpath; void* vdev_nowritecache; TYPE_1__ vdev_stat; TYPE_3__* vdev_tsd; int vdev_reopening; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
struct TYPE_13__ {int * vd_lh; int vd_ldi_cbs; int vd_minor; int vd_devid; scalar_t__ vd_ldi_offline; } ;
typedef TYPE_3__ vdev_disk_t ;
struct TYPE_14__ {int lcb_id; } ;
typedef TYPE_4__ vdev_disk_ldi_cb_t ;
typedef int uint64_t ;
struct dk_minfo_ext {int dki_capacity; int dki_lbsize; int dki_pbsize; } ;
struct dk_minfo {int dki_capacity; int dki_lbsize; } ;
typedef int spa_t ;
typedef int ldi_ev_cookie_t ;
typedef int dev_t ;
typedef int ddi_devid_t ;
typedef void* boolean_t ;


 int ASSERT (int ) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int CE_NOTE ;
 int DEV_BSIZE ;
 int DKIOCGMEDIAINFO ;
 int DKIOCGMEDIAINFOEXT ;
 int DKIOCSETWCE ;
 int EINVAL ;
 int FKIOCTL ;
 int KM_SLEEP ;
 int LDI_EV_DEGRADE ;
 int LDI_EV_OFFLINE ;
 scalar_t__ LDI_EV_SUCCESS ;
 int MAX (int,int ) ;
 int MAXPATHLEN ;
 int NODEV ;
 int OTYP_BLK ;
 int SET_ERROR (int) ;
 int SPA_MINBLOCKSIZE ;
 void* VDEV_AUX_BAD_LABEL ;
 void* VDEV_AUX_OPEN_FAILED ;
 int VDEV_DEBUG (char*,char*,...) ;
 int cmn_err (int ,char*,char*,char*,char*) ;
 scalar_t__ ddi_dev_pathname (int ,int,char*) ;
 scalar_t__ ddi_devid_compare (int ,int ) ;
 int ddi_devid_free (int ) ;
 scalar_t__ ddi_devid_str_decode (char*,int *,int *) ;
 char* ddi_devid_str_encode (int ,int ) ;
 int ddi_devid_str_free (char*) ;
 int ddi_pathname_to_dev_t (char*) ;
 int highbit64 (int ) ;
 int kcred ;
 char* kmem_alloc (int,int ) ;
 int kmem_free (char*,int) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int ldi_close (int *,int ,int ) ;
 scalar_t__ ldi_ev_get_cookie (int *,int ,int *) ;
 int ldi_ev_register_callbacks (int *,int ,int *,void*,int *) ;
 scalar_t__ ldi_get_dev (int *,int *) ;
 scalar_t__ ldi_get_devid (int *,int *) ;
 scalar_t__ ldi_get_minor_name (int *,char**) ;
 scalar_t__ ldi_get_otyp (int *,int*) ;
 scalar_t__ ldi_get_size (int *,int*) ;
 int ldi_ioctl (int *,int ,intptr_t,int ,int ,int *) ;
 int ldi_open_by_dev (int *,int ,int ,int ,int **,int ) ;
 int ldi_open_by_devid (int ,int ,int ,int ,int **,int ) ;
 int ldi_open_by_name (char*,int ,int ,int **,int ) ;
 int list_insert_tail (int *,TYPE_4__*) ;
 int snprintf (char*,size_t,char*,char*) ;
 int spa_mode (int *) ;
 void* spa_strdup (char*) ;
 int spa_strfree (char*) ;
 scalar_t__ spa_writeable (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlen (char*) ;
 int vdev_dbgmsg (TYPE_2__*,char*,...) ;
 int vdev_disk_alloc (TYPE_2__*) ;
 scalar_t__ vdev_disk_bypass_devid ;
 int vdev_disk_dgrd_callb ;
 int vdev_disk_free (TYPE_2__*) ;
 int vdev_disk_off_callb ;
 int zfs_li ;

__attribute__((used)) static int
vdev_disk_open(vdev_t *vd, uint64_t *psize, uint64_t *max_psize,
    uint64_t *ashift)
{
 spa_t *spa = vd->vdev_spa;
 vdev_disk_t *dvd = vd->vdev_tsd;
 ldi_ev_cookie_t ecookie;
 vdev_disk_ldi_cb_t *lcb;
 union {
  struct dk_minfo_ext ude;
  struct dk_minfo ud;
 } dks;
 struct dk_minfo_ext *dkmext = &dks.ude;
 struct dk_minfo *dkm = &dks.ud;
 int error;
 dev_t dev;
 int otyp;
 boolean_t validate_devid = B_FALSE;
 ddi_devid_t devid;
 uint64_t capacity = 0, blksz = 0, pbsize;




 if (vd->vdev_path == ((void*)0) || vd->vdev_path[0] != '/') {
  vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
  return (SET_ERROR(EINVAL));
 }





 if (dvd != ((void*)0)) {
  if (dvd->vd_ldi_offline && dvd->vd_lh == ((void*)0)) {





   vdev_disk_free(vd);
  } else {
   ASSERT(vd->vdev_reopening);
   goto skip_open;
  }
 }




 vdev_disk_alloc(vd);
 dvd = vd->vdev_tsd;




 if (vd->vdev_devid != ((void*)0) && vdev_disk_bypass_devid) {
  vdev_dbgmsg(vd, "vdev_disk_open, devid %s bypassed",
      vd->vdev_devid);
  spa_strfree(vd->vdev_devid);
  vd->vdev_devid = ((void*)0);
 }
 if (vd->vdev_devid != ((void*)0)) {
  if (ddi_devid_str_decode(vd->vdev_devid, &dvd->vd_devid,
      &dvd->vd_minor) != 0) {
   vd->vdev_stat.vs_aux = VDEV_AUX_BAD_LABEL;
   vdev_dbgmsg(vd, "vdev_disk_open: invalid "
       "vdev_devid '%s'", vd->vdev_devid);
   return (SET_ERROR(EINVAL));
  }
 }

 error = EINVAL;

 if (vd->vdev_path != ((void*)0)) {

  if (vd->vdev_wholedisk == -1ULL) {
   size_t len = strlen(vd->vdev_path) + 3;
   char *buf = kmem_alloc(len, KM_SLEEP);

   (void) snprintf(buf, len, "%ss0", vd->vdev_path);

   error = ldi_open_by_name(buf, spa_mode(spa), kcred,
       &dvd->vd_lh, zfs_li);
   if (error == 0) {
    spa_strfree(vd->vdev_path);
    vd->vdev_path = buf;
    vd->vdev_wholedisk = 1ULL;
   } else {
    kmem_free(buf, len);
   }
  }





  if (error != 0) {
   error = ldi_open_by_name(vd->vdev_path, spa_mode(spa),
       kcred, &dvd->vd_lh, zfs_li);
  }




  if (error == 0 && vd->vdev_devid != ((void*)0) &&
      ldi_get_devid(dvd->vd_lh, &devid) == 0) {
   if (ddi_devid_compare(devid, dvd->vd_devid) != 0) {



    char *devid_str = ddi_devid_str_encode(devid,
        dvd->vd_minor);
    vdev_dbgmsg(vd, "vdev_disk_open: devid "
        "mismatch: %s != %s", vd->vdev_devid,
        devid_str);
    cmn_err(CE_NOTE, "vdev_disk_open %s: devid "
        "mismatch: %s != %s", vd->vdev_path,
        vd->vdev_devid, devid_str);
    ddi_devid_str_free(devid_str);

    error = SET_ERROR(EINVAL);
    (void) ldi_close(dvd->vd_lh, spa_mode(spa),
        kcred);
    dvd->vd_lh = ((void*)0);
   }
   ddi_devid_free(devid);
  }





  if (error == 0 && vd->vdev_wholedisk == -1ULL)
   vd->vdev_wholedisk = 0;
 }





 if (error != 0 && vd->vdev_devid != ((void*)0)) {
  error = ldi_open_by_devid(dvd->vd_devid, dvd->vd_minor,
      spa_mode(spa), kcred, &dvd->vd_lh, zfs_li);
  if (error != 0) {
   vdev_dbgmsg(vd, "Failed to open by devid (%s)",
       vd->vdev_devid);
  }
 }







 if (error) {
  if (vd->vdev_devid != ((void*)0))
   validate_devid = B_TRUE;

  if (vd->vdev_physpath != ((void*)0) &&
      (dev = ddi_pathname_to_dev_t(vd->vdev_physpath)) != NODEV)
   error = ldi_open_by_dev(&dev, OTYP_BLK, spa_mode(spa),
       kcred, &dvd->vd_lh, zfs_li);






  if (error && vd->vdev_path != ((void*)0))
   error = ldi_open_by_name(vd->vdev_path, spa_mode(spa),
       kcred, &dvd->vd_lh, zfs_li);
 }

 if (error) {
  vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
  vdev_dbgmsg(vd, "vdev_disk_open: failed to open [error=%d]",
      error);
  return (error);
 }





 if (validate_devid && spa_writeable(spa) &&
     ldi_get_devid(dvd->vd_lh, &devid) == 0) {
  if (ddi_devid_compare(devid, dvd->vd_devid) != 0) {
   char *vd_devid;

   vd_devid = ddi_devid_str_encode(devid, dvd->vd_minor);
   vdev_dbgmsg(vd, "vdev_disk_open: update devid from "
       "'%s' to '%s'", vd->vdev_devid, vd_devid);
   cmn_err(CE_NOTE, "vdev_disk_open %s: update devid "
       "from '%s' to '%s'", vd->vdev_path != ((void*)0) ?
       vd->vdev_path : "?", vd->vdev_devid, vd_devid);
   spa_strfree(vd->vdev_devid);
   vd->vdev_devid = spa_strdup(vd_devid);
   ddi_devid_str_free(vd_devid);
  }
  ddi_devid_free(devid);
 }





 if (ldi_get_dev(dvd->vd_lh, &dev) == 0 &&
     ldi_get_otyp(dvd->vd_lh, &otyp) == 0) {
  char *physpath, *minorname;

  physpath = kmem_alloc(MAXPATHLEN, KM_SLEEP);
  minorname = ((void*)0);
  if (ddi_dev_pathname(dev, otyp, physpath) == 0 &&
      ldi_get_minor_name(dvd->vd_lh, &minorname) == 0 &&
      (vd->vdev_physpath == ((void*)0) ||
      strcmp(vd->vdev_physpath, physpath) != 0)) {
   if (vd->vdev_physpath)
    spa_strfree(vd->vdev_physpath);
   (void) strlcat(physpath, ":", MAXPATHLEN);
   (void) strlcat(physpath, minorname, MAXPATHLEN);
   vd->vdev_physpath = spa_strdup(physpath);
  }
  if (minorname)
   kmem_free(minorname, strlen(minorname) + 1);
  kmem_free(physpath, MAXPATHLEN);
 }




 if (ldi_ev_get_cookie(dvd->vd_lh, LDI_EV_OFFLINE, &ecookie) ==
     LDI_EV_SUCCESS) {
  lcb = kmem_zalloc(sizeof (vdev_disk_ldi_cb_t), KM_SLEEP);
  list_insert_tail(&dvd->vd_ldi_cbs, lcb);
  (void) ldi_ev_register_callbacks(dvd->vd_lh, ecookie,
      &vdev_disk_off_callb, (void *) vd, &lcb->lcb_id);
 }




 if (ldi_ev_get_cookie(dvd->vd_lh, LDI_EV_DEGRADE, &ecookie) ==
     LDI_EV_SUCCESS) {
  lcb = kmem_zalloc(sizeof (vdev_disk_ldi_cb_t), KM_SLEEP);
  list_insert_tail(&dvd->vd_ldi_cbs, lcb);
  (void) ldi_ev_register_callbacks(dvd->vd_lh, ecookie,
      &vdev_disk_dgrd_callb, (void *) vd, &lcb->lcb_id);
 }
skip_open:



 if (ldi_get_size(dvd->vd_lh, psize) != 0) {
  vd->vdev_stat.vs_aux = VDEV_AUX_OPEN_FAILED;
  vdev_dbgmsg(vd, "vdev_disk_open: failed to get size");
  return (SET_ERROR(EINVAL));
 }

 *max_psize = *psize;





 if ((error = ldi_ioctl(dvd->vd_lh, DKIOCGMEDIAINFOEXT,
     (intptr_t)dkmext, FKIOCTL, kcred, ((void*)0))) == 0) {
  capacity = dkmext->dki_capacity - 1;
  blksz = dkmext->dki_lbsize;
  pbsize = dkmext->dki_pbsize;
 } else if ((error = ldi_ioctl(dvd->vd_lh, DKIOCGMEDIAINFO,
     (intptr_t)dkm, FKIOCTL, kcred, ((void*)0))) == 0) {
  VDEV_DEBUG(
      "vdev_disk_open(\"%s\"): fallback to DKIOCGMEDIAINFO\n",
      vd->vdev_path);
  capacity = dkm->dki_capacity - 1;
  blksz = dkm->dki_lbsize;
  pbsize = blksz;
 } else {
  VDEV_DEBUG("vdev_disk_open(\"%s\"): "
      "both DKIOCGMEDIAINFO{,EXT} calls failed, %d\n",
      vd->vdev_path, error);
  pbsize = DEV_BSIZE;
 }

 *ashift = highbit64(MAX(pbsize, SPA_MINBLOCKSIZE)) - 1;

 if (vd->vdev_wholedisk == 1) {
  int wce = 1;

  if (error == 0) {






   *max_psize = capacity * blksz;
  }





  (void) ldi_ioctl(dvd->vd_lh, DKIOCSETWCE, (intptr_t)&wce,
      FKIOCTL, kcred, ((void*)0));
 }





 vd->vdev_nowritecache = B_FALSE;

 return (0);
}
