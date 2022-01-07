
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint8_t ;
struct tpc_list {scalar_t__ service_action; int error; size_t curseg; size_t nseg; int flags; int completed; int scsi_status; int sense_len; int sense_data; void* last_active; TYPE_1__* token; struct tpc_list* params; scalar_t__ stage; struct scsi_ec_segment** seg; struct ctl_scsiio* ctsio; struct ctl_lun* lun; } ;
struct scsi_ec_segment {int type_code; } ;
struct ctl_softc {int tpc_lock; } ;
struct ctl_scsiio {int scsi_status; int sense_len; int sense_data; } ;
struct ctl_lun {int lun_lock; int tpc_lists; struct ctl_softc* ctl_softc; } ;
typedef int csi ;
struct TYPE_2__ {scalar_t__ active; void* last_active; } ;


 int CTL_RETVAL_COMPLETE ;
 int CTL_RETVAL_ERROR ;
 int CTL_RETVAL_QUEUED ;
 int EC_LIST_ID_USAGE_MASK ;
 int EC_LIST_ID_USAGE_NONE ;



 scalar_t__ EC_WUT ;
 int M_CTL ;
 int SSD_ELEM_COMMAND ;
 int SSD_ELEM_NONE ;
 int SSD_KEY_COPY_ABORTED ;
 int TAILQ_REMOVE (int *,struct tpc_list*,int ) ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ,int,int *,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int free (struct tpc_list*,int ) ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_ulto4b (size_t,int *) ;
 void* time_uptime ;
 int tpc_process_b2b (struct tpc_list*) ;
 int tpc_process_register_key (struct tpc_list*) ;
 int tpc_process_verify (struct tpc_list*) ;
 int tpc_process_wut (struct tpc_list*) ;
 int tpc_process_zero_wut (struct tpc_list*) ;

__attribute__((used)) static void
tpc_process(struct tpc_list *list)
{
 struct ctl_lun *lun = list->lun;
 struct ctl_softc *softc = lun->ctl_softc;
 struct scsi_ec_segment *seg;
 struct ctl_scsiio *ctsio = list->ctsio;
 int retval = CTL_RETVAL_COMPLETE;
 uint8_t csi[4];

 if (list->service_action == EC_WUT) {
  if (list->token != ((void*)0))
   retval = tpc_process_wut(list);
  else
   retval = tpc_process_zero_wut(list);
  if (retval == CTL_RETVAL_QUEUED)
   return;
  if (retval == CTL_RETVAL_ERROR) {
   list->error = 1;
   goto done;
  }
 } else {

  while (list->curseg < list->nseg) {
   seg = list->seg[list->curseg];
   switch (seg->type_code) {
   case 130:
    retval = tpc_process_b2b(list);
    break;
   case 128:
    retval = tpc_process_verify(list);
    break;
   case 129:
    retval = tpc_process_register_key(list);
    break;
   default:
    scsi_ulto4b(list->curseg, csi);
    ctl_set_sense(ctsio, 1,
                      SSD_KEY_COPY_ABORTED,
                0x26, 0x09,
        SSD_ELEM_COMMAND, sizeof(csi), csi,
        SSD_ELEM_NONE);
    goto done;
   }
   if (retval == CTL_RETVAL_QUEUED)
    return;
   if (retval == CTL_RETVAL_ERROR) {
    list->error = 1;
    goto done;
   }
   list->curseg++;
   list->stage = 0;
  }
 }

 ctl_set_success(ctsio);

done:

 free(list->params, M_CTL);
 list->params = ((void*)0);
 if (list->token) {
  mtx_lock(&softc->tpc_lock);
  if (--list->token->active == 0)
   list->token->last_active = time_uptime;
  mtx_unlock(&softc->tpc_lock);
  list->token = ((void*)0);
 }
 mtx_lock(&lun->lun_lock);
 if ((list->flags & EC_LIST_ID_USAGE_MASK) == EC_LIST_ID_USAGE_NONE) {
  TAILQ_REMOVE(&lun->tpc_lists, list, links);
  free(list, M_CTL);
 } else {
  list->completed = 1;
  list->last_active = time_uptime;
  list->sense_data = ctsio->sense_data;
  list->sense_len = ctsio->sense_len;
  list->scsi_status = ctsio->scsi_status;
 }
 mtx_unlock(&lun->lun_lock);

 ctl_done((union ctl_io *)ctsio);
}
