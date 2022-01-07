
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct tpc_list {int sense_len; int sense_data; scalar_t__ abort; scalar_t__ error; scalar_t__ completed; } ;
struct scsi_receive_copy_failure_details_data {int sense_data; int sense_data_length; int available_data; int copy_command_status; } ;
struct scsi_receive_copy_failure_details {int length; int list_identifier; } ;
struct TYPE_2__ {int flags; int nexus; } ;
struct ctl_scsiio {int be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;
struct ctl_lun {int lun_lock; int tpc_lists; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int RCS_CCS_ERROR ;
 int TAILQ_REMOVE (int *,struct tpc_list*,int ) ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_done (union ctl_io*) ;
 int ctl_get_initindex (int *) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int ,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int free (struct tpc_list*,int ) ;
 int links ;
 scalar_t__ malloc (int,int ,int) ;
 int memcpy (int ,int *,int) ;
 int min (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_4btoul (int ) ;
 int scsi_ulto2b (int,int ) ;
 int scsi_ulto4b (int,int ) ;
 struct tpc_list* tpc_find_list (struct ctl_lun*,int ,int ) ;

int
ctl_receive_copy_failure_details(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_receive_copy_failure_details *cdb;
 struct scsi_receive_copy_failure_details_data *data;
 struct tpc_list *list;
 struct tpc_list list_copy;
 int retval;
 int alloc_len, total_len;
 uint32_t list_id;

 CTL_DEBUG_PRINT(("ctl_receive_copy_failure_details\n"));

 cdb = (struct scsi_receive_copy_failure_details *)ctsio->cdb;
 retval = CTL_RETVAL_COMPLETE;

 list_id = cdb->list_identifier;
 mtx_lock(&lun->lun_lock);
 list = tpc_find_list(lun, list_id,
     ctl_get_initindex(&ctsio->io_hdr.nexus));
 if (list == ((void*)0) || !list->completed) {
  mtx_unlock(&lun->lun_lock);
  ctl_set_invalid_field(ctsio, 1,
                  1, 2, 0,
              0);
  ctl_done((union ctl_io *)ctsio);
  return (retval);
 }
 list_copy = *list;
 TAILQ_REMOVE(&lun->tpc_lists, list, links);
 free(list, M_CTL);
 mtx_unlock(&lun->lun_lock);

 total_len = sizeof(*data) + list_copy.sense_len;
 alloc_len = scsi_4btoul(cdb->length);

 ctsio->kern_data_ptr = malloc(total_len, M_CTL, M_WAITOK | M_ZERO);
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(total_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;

 data = (struct scsi_receive_copy_failure_details_data *)ctsio->kern_data_ptr;
 if (list_copy.completed && (list_copy.error || list_copy.abort)) {
  scsi_ulto4b(sizeof(*data) - 4 + list_copy.sense_len,
      data->available_data);
  data->copy_command_status = RCS_CCS_ERROR;
 } else
  scsi_ulto4b(0, data->available_data);
 scsi_ulto2b(list_copy.sense_len, data->sense_data_length);
 memcpy(data->sense_data, &list_copy.sense_data, list_copy.sense_len);

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (retval);
}
