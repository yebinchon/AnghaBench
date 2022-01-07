
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int ext_data_len; int * ext_data_ptr; int tag_type; scalar_t__ cdb; } ;
struct TYPE_5__ {int flags; int io_type; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_2__ io_hdr; } ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int key; } ;
struct scsi_per_res_out_parms {int serv_act_res_key; TYPE_1__ res_key; } ;
struct scsi_per_res_out {int action; int scope_type; int control; int length; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_OUT ;
 int CTL_IO_SCSI ;
 int PERSISTENT_RES_OUT ;
 int SSD_FULL_SIZE ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int scsi_u64to8b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
ctl_scsi_persistent_res_out(union ctl_io *io, uint8_t *data_ptr,
       uint32_t data_len, int action, int type,
       uint64_t key, uint64_t sa_key,
       ctl_tag_type tag_type, uint8_t control)
{

 struct scsi_per_res_out *cdb;
 struct scsi_per_res_out_parms *params;

 ctl_scsi_zero_io(io);

 cdb = (struct scsi_per_res_out *)io->scsiio.cdb;
 params = (struct scsi_per_res_out_parms *)data_ptr;

 cdb->opcode = PERSISTENT_RES_OUT;
 if (action == 5)
     cdb->action = 6;
 else
     cdb->action = action;
 switch(type)
 {
     case 0:
      cdb->scope_type = 1;
   break;
     case 1:
      cdb->scope_type = 3;
   break;
     case 2:
      cdb->scope_type = 5;
   break;
     case 3:
      cdb->scope_type = 6;
   break;
     case 4:
      cdb->scope_type = 7;
   break;
     case 5:
      cdb->scope_type = 8;
   break;
 }
 scsi_ulto4b(data_len, cdb->length);
 cdb->control = control;

 scsi_u64to8b(key, params->res_key.key);
 scsi_u64to8b(sa_key, params->serv_act_res_key);

 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.flags = CTL_FLAG_DATA_OUT;
 io->scsiio.tag_type = tag_type;
 io->scsiio.ext_data_ptr = data_ptr;
 io->scsiio.ext_data_len = data_len;
 io->scsiio.ext_sg_entries = 0;
 io->scsiio.ext_data_filled = 0;
 io->scsiio.sense_len = SSD_FULL_SIZE;

}
