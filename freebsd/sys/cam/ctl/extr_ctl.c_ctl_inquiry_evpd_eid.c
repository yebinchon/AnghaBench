
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_vpd_extended_inquiry_data {int device; int flags2; scalar_t__ max_sense_length; int flags5; int flags4; int flags3; int page_length; int page_code; } ;
struct TYPE_4__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int lun_type; } ;


 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_QUAL_LU_OFFLINE ;
 int SVPD_EID_HEADSUP ;
 int SVPD_EID_LUICLR ;
 int SVPD_EID_ORDSUP ;
 int SVPD_EID_RTD_SUP ;
 int SVPD_EID_SIMPSUP ;
 int SVPD_EID_V_SUP ;
 int SVPD_EXTENDED_INQUIRY_DATA ;
 int T_DIRECT ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_ulto2b (int,int ) ;

__attribute__((used)) static int
ctl_inquiry_evpd_eid(struct ctl_scsiio *ctsio, int alloc_len)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_vpd_extended_inquiry_data *eid_ptr;
 int data_len;

 data_len = sizeof(struct scsi_vpd_extended_inquiry_data);
 ctsio->kern_data_ptr = malloc(data_len, M_CTL, M_WAITOK | M_ZERO);
 eid_ptr = (struct scsi_vpd_extended_inquiry_data *)ctsio->kern_data_ptr;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(data_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;





 if (lun != ((void*)0))
  eid_ptr->device = (SID_QUAL_LU_CONNECTED << 5) |
         lun->be_lun->lun_type;
 else
  eid_ptr->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;
 eid_ptr->page_code = SVPD_EXTENDED_INQUIRY_DATA;
 scsi_ulto2b(data_len - 4, eid_ptr->page_length);



 eid_ptr->flags2 = SVPD_EID_HEADSUP | SVPD_EID_ORDSUP | SVPD_EID_SIMPSUP;



 eid_ptr->flags3 = SVPD_EID_V_SUP;






 eid_ptr->flags4 = SVPD_EID_LUICLR;




 eid_ptr->flags5 = SVPD_EID_RTD_SUP;
 eid_ptr->max_sense_length = 0;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
