
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int u_int ;
struct scsi_sense_data_fixed {int dummy; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {scalar_t__ error_code; } ;
struct scsi_request_sense {int byte2; int length; } ;
struct ctl_softc {scalar_t__ ha_link; } ;
struct TYPE_4__ {int flags; int nexus; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_total_len; int kern_data_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ kern_data_ptr; scalar_t__ cdb; } ;
struct TYPE_3__ {scalar_t__ mrie; } ;
struct ctl_lun {int flags; int ie_asc; int ie_ascq; int lun_lock; TYPE_1__ MODE_IE; struct scsi_sense_data** pending_sense; } ;
typedef scalar_t__ scsi_sense_data_type ;
typedef scalar_t__ ctl_ua_type ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 scalar_t__ CTL_HA_LINK_UNKNOWN ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_LUN_PRIMARY_SC ;
 size_t CTL_MAX_INIT_PER_PORT ;
 int CTL_RETVAL_COMPLETE ;
 struct ctl_softc* CTL_SOFTC (struct ctl_scsiio*) ;
 scalar_t__ CTL_UA_NONE ;
 int M_CTL ;
 int M_WAITOK ;
 scalar_t__ SIEP_MRIE_NO ;
 int SRS_DESC ;
 int SSD_ELEM_NONE ;
 int SSD_FULL_SIZE ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSD_KEY_NO_SENSE ;
 scalar_t__ SSD_TYPE_DESC ;
 scalar_t__ SSD_TYPE_FIXED ;
 scalar_t__ ctl_build_ua (struct ctl_lun*,size_t,struct scsi_sense_data*,int *,scalar_t__) ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 size_t ctl_get_initindex (int *) ;
 int ctl_sense_to_desc (struct scsi_sense_data_fixed*,struct scsi_sense_data_desc*) ;
 int ctl_sense_to_fixed (struct scsi_sense_data_desc*,struct scsi_sense_data_fixed*) ;
 int ctl_set_sense_data (struct scsi_sense_data*,int *,struct ctl_lun*,scalar_t__,int,int ,int,int,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int ) ;
 int memcpy (struct scsi_sense_data*,struct scsi_sense_data*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ scsi_sense_type (struct scsi_sense_data*) ;

int
ctl_request_sense(struct ctl_scsiio *ctsio)
{
 struct ctl_softc *softc = CTL_SOFTC(ctsio);
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_request_sense *cdb;
 struct scsi_sense_data *sense_ptr, *ps;
 uint32_t initidx;
 int have_error;
 u_int sense_len = SSD_FULL_SIZE;
 scsi_sense_data_type sense_format;
 ctl_ua_type ua_type;
 uint8_t asc = 0, ascq = 0;

 cdb = (struct scsi_request_sense *)ctsio->cdb;

 CTL_DEBUG_PRINT(("ctl_request_sense\n"));




 if (cdb->byte2 & SRS_DESC)
  sense_format = SSD_TYPE_DESC;
 else
  sense_format = SSD_TYPE_FIXED;

 ctsio->kern_data_ptr = malloc(sizeof(*sense_ptr), M_CTL, M_WAITOK);
 sense_ptr = (struct scsi_sense_data *)ctsio->kern_data_ptr;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;






 ctsio->kern_data_len = cdb->length;
 ctsio->kern_total_len = cdb->length;




 if (lun == ((void*)0) ||
     ((lun->flags & CTL_LUN_PRIMARY_SC) == 0 &&
      softc->ha_link < CTL_HA_LINK_UNKNOWN)) {

  ctl_set_sense_data(sense_ptr, &sense_len, ((void*)0), sense_format,
                        1,
                    SSD_KEY_ILLEGAL_REQUEST,
              0x25,
               0x00,
      SSD_ELEM_NONE);
  goto send;
 }

 have_error = 0;
 initidx = ctl_get_initindex(&ctsio->io_hdr.nexus);




 mtx_lock(&lun->lun_lock);
 ps = lun->pending_sense[initidx / CTL_MAX_INIT_PER_PORT];
 if (ps != ((void*)0))
  ps += initidx % CTL_MAX_INIT_PER_PORT;
 if (ps != ((void*)0) && ps->error_code != 0) {
  scsi_sense_data_type stored_format;





  stored_format = scsi_sense_type(ps);
  if ((stored_format == SSD_TYPE_FIXED)
   && (sense_format == SSD_TYPE_DESC))
   ctl_sense_to_desc((struct scsi_sense_data_fixed *)
       ps, (struct scsi_sense_data_desc *)sense_ptr);
  else if ((stored_format == SSD_TYPE_DESC)
        && (sense_format == SSD_TYPE_FIXED))
   ctl_sense_to_fixed((struct scsi_sense_data_desc *)
       ps, (struct scsi_sense_data_fixed *)sense_ptr);
  else
   memcpy(sense_ptr, ps, sizeof(*sense_ptr));

  ps->error_code = 0;
  have_error = 1;
 } else {
  ua_type = ctl_build_ua(lun, initidx, sense_ptr, &sense_len,
      sense_format);
  if (ua_type != CTL_UA_NONE)
   have_error = 1;
 }
 if (have_error == 0) {



  if (lun->MODE_IE.mrie != SIEP_MRIE_NO) {
   asc = lun->ie_asc;
   ascq = lun->ie_ascq;
  }
  ctl_set_sense_data(sense_ptr, &sense_len, lun, sense_format,
                        1,
                    SSD_KEY_NO_SENSE,
              asc,
               ascq,
      SSD_ELEM_NONE);
 }
 mtx_unlock(&lun->lun_lock);

send:




 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
