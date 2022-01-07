
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int z_vfs; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_18__ {char* zc_value; scalar_t__ zc_nvlist_src; int zc_cookie; char* zc_string; int zc_obj; int zc_nvlist_dst_size; int zc_action_handle; int zc_cleanup_fd; int zc_resumable; int zc_begin_record; int zc_iflags; int zc_nvlist_src_size; int zc_guid; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef scalar_t__ offset_t ;
typedef int nvlist_t ;
struct TYPE_19__ {scalar_t__ f_offset; } ;
typedef TYPE_3__ file_t ;
typedef int dsl_dataset_t ;
struct TYPE_20__ {int drc_newfs; int drc_ds; } ;
typedef TYPE_4__ dmu_recv_cookie_t ;
typedef void* boolean_t ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int EBADF ;
 int EINVAL ;
 scalar_t__ MAXOFFSET_T ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_RECVD_PROPS ;
 int VFS_RELE (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZPROP_ERR_NOCLEAR ;
 int ZPROP_ERR_NORESTORE ;
 int ZPROP_SRC_LOCAL ;
 int ZPROP_SRC_RECEIVED ;
 int cap_pread_rights ;
 scalar_t__ clear_received_props (char*,int *,int *) ;
 int curthread ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int * dmu_objset_ds (int ) ;
 int dmu_recv_begin (char*,char*,int *,void*,int ,char*,TYPE_4__*) ;
 int dmu_recv_end (TYPE_4__*,TYPE_1__*) ;
 int dmu_recv_stream (TYPE_4__*,TYPE_3__*,scalar_t__*,int ,int *) ;
 int dsl_dataset_get_spa (int ) ;
 int dsl_prop_get_hasrecvd (char*) ;
 scalar_t__ dsl_prop_get_received (char*,int **) ;
 int dsl_prop_set_hasrecvd (char*) ;
 int dsl_prop_unset_hasrecvd (char*) ;
 int * extract_delay_props (int *) ;
 int fget_read (int ,int,int *,TYPE_3__**) ;
 int * fnvlist_alloc () ;
 int get_nvlist (scalar_t__,int ,int ,int **) ;
 TYPE_3__* getf (int) ;
 scalar_t__ getzfsvfs (char*,TYPE_1__**) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_merge (int *,int *,int ) ;
 scalar_t__ nvlist_smush (int *,int ) ;
 int props_reduce (int *,int *) ;
 scalar_t__ put_nvlist (TYPE_2__*,int *) ;
 int releasef (int) ;
 scalar_t__ spa_version (int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int vfs_unbusy (int ) ;
 scalar_t__ zfs_check_clearable (char*,int *,int **) ;
 void* zfs_ioc_recv_inject_err ;
 int zfs_resume_fs (TYPE_1__*,int *) ;
 scalar_t__ zfs_set_prop_nvlist (char*,int ,int *,int *) ;
 int zfs_suspend_fs (TYPE_1__*) ;
 int zvol_create_minors (char*) ;

__attribute__((used)) static int
zfs_ioc_recv(zfs_cmd_t *zc)
{
 file_t *fp;
 dmu_recv_cookie_t drc;
 boolean_t force = (boolean_t)zc->zc_guid;
 int fd;
 int error = 0;
 int props_error = 0;
 nvlist_t *errors;
 offset_t off;
 nvlist_t *props = ((void*)0);
 nvlist_t *origprops = ((void*)0);
 nvlist_t *delayprops = ((void*)0);
 char *origin = ((void*)0);
 char *tosnap;
 char tofs[ZFS_MAX_DATASET_NAME_LEN];
 boolean_t first_recvd_props = B_FALSE;

 if (dataset_namecheck(zc->zc_value, ((void*)0), ((void*)0)) != 0 ||
     strchr(zc->zc_value, '@') == ((void*)0) ||
     strchr(zc->zc_value, '%'))
  return (SET_ERROR(EINVAL));

 (void) strcpy(tofs, zc->zc_value);
 tosnap = strchr(tofs, '@');
 *tosnap++ = '\0';

 if (zc->zc_nvlist_src != 0 &&
     (error = get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &props)) != 0)
  return (error);

 fd = zc->zc_cookie;



 fget_read(curthread, fd, &cap_pread_rights, &fp);

 if (fp == ((void*)0)) {
  nvlist_free(props);
  return (SET_ERROR(EBADF));
 }

 errors = fnvlist_alloc();

 if (zc->zc_string[0])
  origin = zc->zc_string;

 error = dmu_recv_begin(tofs, tosnap,
     &zc->zc_begin_record, force, zc->zc_resumable, origin, &drc);
 if (error != 0)
  goto out;






 if (props != ((void*)0) && !drc.drc_newfs) {
  if (spa_version(dsl_dataset_get_spa(drc.drc_ds)) >=
      SPA_VERSION_RECVD_PROPS &&
      !dsl_prop_get_hasrecvd(tofs))
   first_recvd_props = B_TRUE;






  if (dsl_prop_get_received(tofs, &origprops) == 0) {
   nvlist_t *errlist = ((void*)0);
   if (!first_recvd_props)
    props_reduce(props, origprops);
   if (zfs_check_clearable(tofs, origprops, &errlist) != 0)
    (void) nvlist_merge(errors, errlist, 0);
   nvlist_free(errlist);

   if (clear_received_props(tofs, origprops,
       first_recvd_props ? ((void*)0) : props) != 0)
    zc->zc_obj |= ZPROP_ERR_NOCLEAR;
  } else {
   zc->zc_obj |= ZPROP_ERR_NOCLEAR;
  }
 }

 if (props != ((void*)0)) {
  props_error = dsl_prop_set_hasrecvd(tofs);

  if (props_error == 0) {
   delayprops = extract_delay_props(props);
   (void) zfs_set_prop_nvlist(tofs, ZPROP_SRC_RECEIVED,
       props, errors);
  }
 }

 off = fp->f_offset;
 error = dmu_recv_stream(&drc, fp, &off, zc->zc_cleanup_fd,
     &zc->zc_action_handle);

 if (error == 0) {
  zfsvfs_t *zfsvfs = ((void*)0);

  if (getzfsvfs(tofs, &zfsvfs) == 0) {

   dsl_dataset_t *ds;
   int end_err;

   ds = dmu_objset_ds(zfsvfs->z_os);
   error = zfs_suspend_fs(zfsvfs);




   end_err = dmu_recv_end(&drc, zfsvfs);
   if (error == 0)
    error = zfs_resume_fs(zfsvfs, ds);
   error = error ? error : end_err;



   vfs_unbusy(zfsvfs->z_vfs);

  } else {
   error = dmu_recv_end(&drc, ((void*)0));
  }


  if (delayprops != ((void*)0) && error == 0) {
   (void) zfs_set_prop_nvlist(tofs, ZPROP_SRC_RECEIVED,
       delayprops, errors);
  }
 }

 if (delayprops != ((void*)0)) {
  ASSERT(nvlist_merge(props, delayprops, 0) == 0);
  nvlist_free(delayprops);
 }





 if (zc->zc_nvlist_dst_size != 0 &&
     (nvlist_smush(errors, zc->zc_nvlist_dst_size) != 0 ||
     put_nvlist(zc, errors) != 0)) {




  props_error = SET_ERROR(EINVAL);
 }

 zc->zc_cookie = off - fp->f_offset;
 if (off >= 0 && off <= MAXOFFSET_T)
  fp->f_offset = off;
 if (error != 0 && props != ((void*)0) && !drc.drc_newfs) {
  if (clear_received_props(tofs, props, ((void*)0)) != 0) {





   zc->zc_obj |= ZPROP_ERR_NORESTORE;
  } else if (first_recvd_props) {
   dsl_prop_unset_hasrecvd(tofs);
  }

  if (origprops == ((void*)0) && !drc.drc_newfs) {

   zc->zc_obj |= ZPROP_ERR_NORESTORE;
  }







  if (origprops != ((void*)0) &&
      zfs_set_prop_nvlist(tofs, (first_recvd_props ?
      ZPROP_SRC_LOCAL : ZPROP_SRC_RECEIVED),
      origprops, ((void*)0)) != 0) {




   zc->zc_obj |= ZPROP_ERR_NORESTORE;
  }
 }
out:
 nvlist_free(props);
 nvlist_free(origprops);
 nvlist_free(errors);
 releasef(fd);

 if (error == 0)
  error = props_error;

 return (error);
}
