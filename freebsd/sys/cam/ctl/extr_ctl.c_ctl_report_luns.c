
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct scsi_report_luns_lundata {int dummy; } ;
struct scsi_report_luns_data {int length; TYPE_1__* luns; } ;
struct scsi_report_luns {int select_report; int length; } ;
struct ctl_softc {int ctl_lock; struct ctl_lun** ctl_luns; } ;
struct TYPE_4__ {int flags; int nexus; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; scalar_t__ cdb; } ;
struct ctl_port {int lun_map_size; scalar_t__ lun_map; } ;
struct ctl_lun {int lun_lock; } ;
struct TYPE_3__ {int lundata; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 struct ctl_port* CTL_PORT (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 struct ctl_softc* CTL_SOFTC (struct ctl_scsiio*) ;
 int CTL_UA_LUN_CHANGE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;






 scalar_t__ UINT32_MAX ;
 int be64enc (int ,int ) ;
 int ctl_clr_ua (struct ctl_lun*,int,int ) ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_done (union ctl_io*) ;
 int ctl_encode_lun (int) ;
 int ctl_get_initindex (int *) ;
 scalar_t__ ctl_lun_map_from_port (struct ctl_port*,int) ;
 int ctl_max_luns ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int ,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_4btoul (int ) ;
 int scsi_ulto4b (int,int ) ;

int
ctl_report_luns(struct ctl_scsiio *ctsio)
{
 struct ctl_softc *softc = CTL_SOFTC(ctsio);
 struct ctl_port *port = CTL_PORT(ctsio);
 struct ctl_lun *lun, *request_lun = CTL_LUN(ctsio);
 struct scsi_report_luns *cdb;
 struct scsi_report_luns_data *lun_data;
 int num_filled, num_luns, num_port_luns, retval;
 uint32_t alloc_len, lun_datalen;
 uint32_t initidx, targ_lun_id, lun_id;

 retval = CTL_RETVAL_COMPLETE;
 cdb = (struct scsi_report_luns *)ctsio->cdb;

 CTL_DEBUG_PRINT(("ctl_report_luns\n"));

 num_luns = 0;
 num_port_luns = port->lun_map ? port->lun_map_size : ctl_max_luns;
 mtx_lock(&softc->ctl_lock);
 for (targ_lun_id = 0; targ_lun_id < num_port_luns; targ_lun_id++) {
  if (ctl_lun_map_from_port(port, targ_lun_id) != UINT32_MAX)
   num_luns++;
 }
 mtx_unlock(&softc->ctl_lock);

 switch (cdb->select_report) {
 case 130:
 case 132:
 case 129:
  break;
 case 128:
 case 133:
 case 131:
  num_luns = 0;
  break;
 default:
  ctl_set_invalid_field(ctsio,
                        1,
                      1,
                    2,
                        0,
                  0);
  ctl_done((union ctl_io *)ctsio);
  return (retval);
  break;
 }

 alloc_len = scsi_4btoul(cdb->length);





 if (alloc_len < (sizeof(struct scsi_report_luns_data) +
     sizeof(struct scsi_report_luns_lundata))) {
  ctl_set_invalid_field(ctsio,
                        1,
                      1,
                    6,
                        0,
                  0);
  ctl_done((union ctl_io *)ctsio);
  return (retval);
 }

 lun_datalen = sizeof(*lun_data) +
  (num_luns * sizeof(struct scsi_report_luns_lundata));

 ctsio->kern_data_ptr = malloc(lun_datalen, M_CTL, M_WAITOK | M_ZERO);
 lun_data = (struct scsi_report_luns_data *)ctsio->kern_data_ptr;
 ctsio->kern_sg_entries = 0;

 initidx = ctl_get_initindex(&ctsio->io_hdr.nexus);

 mtx_lock(&softc->ctl_lock);
 for (targ_lun_id = 0, num_filled = 0;
     targ_lun_id < num_port_luns && num_filled < num_luns;
     targ_lun_id++) {
  lun_id = ctl_lun_map_from_port(port, targ_lun_id);
  if (lun_id == UINT32_MAX)
   continue;
  lun = softc->ctl_luns[lun_id];
  if (lun == ((void*)0))
   continue;

  be64enc(lun_data->luns[num_filled++].lundata,
      ctl_encode_lun(targ_lun_id));
  if (request_lun != ((void*)0)) {
   mtx_lock(&lun->lun_lock);
   ctl_clr_ua(lun, initidx, CTL_UA_LUN_CHANGE);
   mtx_unlock(&lun->lun_lock);
  }
 }
 mtx_unlock(&softc->ctl_lock);





 lun_datalen = sizeof(*lun_data) +
  (num_filled * sizeof(struct scsi_report_luns_lundata));
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_data_len = min(lun_datalen, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;
 scsi_ulto4b(lun_datalen - 8, lun_data->length);





 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (retval);
}
