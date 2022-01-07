
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef size_t u_int ;
struct scsi_report_luns_data {TYPE_2__* luns; int length; } ;
struct cam_path {TYPE_1__* target; } ;
typedef int probe_flags ;
typedef scalar_t__ lun_id_t ;
struct TYPE_4__ {int * lundata; } ;
struct TYPE_3__ {int luns_mtx; struct scsi_report_luns_data* luns; } ;


 int AC_LOST_DEVICE ;
 int CAM_CAN_GET_SIMPLE_LUN (struct scsi_report_luns_data*,size_t) ;
 int CAM_GET_LUN (struct scsi_report_luns_data*,size_t,scalar_t__) ;
 int CAM_GET_SIMPLE_LUN (struct scsi_report_luns_data*,size_t,scalar_t__) ;
 scalar_t__ CAM_REQ_CMP ;
 int M_CAMXPT ;
 int PROBE_EXTLUN ;
 int free (struct scsi_report_luns_data*,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_4btoul (int ) ;
 int xpt_async (int ,struct cam_path*,int *) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,scalar_t__) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_path_id (struct cam_path*) ;
 int xpt_path_target_id (struct cam_path*) ;

__attribute__((used)) static void
probe_purge_old(struct cam_path *path, struct scsi_report_luns_data *new,
    probe_flags flags)
{
 struct cam_path *tp;
 struct scsi_report_luns_data *old;
 u_int idx1, idx2, nlun_old, nlun_new;
 lun_id_t this_lun;
 u_int8_t *ol, *nl;

 if (path->target == ((void*)0)) {
  return;
 }
 mtx_lock(&path->target->luns_mtx);
 old = path->target->luns;
 path->target->luns = new;
 mtx_unlock(&path->target->luns_mtx);
 if (old == ((void*)0))
  return;
 nlun_old = scsi_4btoul(old->length) / 8;
 nlun_new = scsi_4btoul(new->length) / 8;




 for (idx1 = 0; idx1 < nlun_old; idx1++) {
  ol = old->luns[idx1].lundata;
  for (idx2 = 0; idx2 < nlun_new; idx2++) {
   nl = new->luns[idx2].lundata;
   if (memcmp(nl, ol, 8) == 0) {
    break;
   }
  }
  if (idx2 < nlun_new) {
   continue;
  }







  CAM_GET_LUN(old, idx1, this_lun);
  if (this_lun == 0) {
   continue;
  }







  if (!(flags & PROBE_EXTLUN)) {
   if (!CAM_CAN_GET_SIMPLE_LUN(old, idx1))
    continue;
   CAM_GET_SIMPLE_LUN(old, idx1, this_lun);
  }

  if (xpt_create_path(&tp, ((void*)0), xpt_path_path_id(path),
      xpt_path_target_id(path), this_lun) == CAM_REQ_CMP) {
   xpt_async(AC_LOST_DEVICE, tp, ((void*)0));
   xpt_free_path(tp);
  }
 }
 free(old, M_CAMXPT);
}
