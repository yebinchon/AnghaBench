
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_vpd_unit_serial_number {int device; int length; scalar_t__ serial_num; int page_code; } ;
struct TYPE_4__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int lun_type; scalar_t__ serial_num; } ;


 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_SN_LEN ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_QUAL_LU_OFFLINE ;
 int SVPD_UNIT_SERIAL_NUMBER ;
 int T_DIRECT ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int memset (scalar_t__,int,int) ;
 int min (int,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int
ctl_inquiry_evpd_serial(struct ctl_scsiio *ctsio, int alloc_len)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_vpd_unit_serial_number *sn_ptr;
 int data_len;

 data_len = 4 + CTL_SN_LEN;
 ctsio->kern_data_ptr = malloc(data_len, M_CTL, M_WAITOK | M_ZERO);
 sn_ptr = (struct scsi_vpd_unit_serial_number *)ctsio->kern_data_ptr;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_data_len = min(data_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;






 if (lun != ((void*)0))
  sn_ptr->device = (SID_QUAL_LU_CONNECTED << 5) |
      lun->be_lun->lun_type;
 else
  sn_ptr->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;

 sn_ptr->page_code = SVPD_UNIT_SERIAL_NUMBER;
 sn_ptr->length = CTL_SN_LEN;




 if (lun != ((void*)0)) {
  strncpy((char *)sn_ptr->serial_num,
   (char *)lun->be_lun->serial_num, CTL_SN_LEN);
 } else
  memset(sn_ptr->serial_num, 0x20, CTL_SN_LEN);

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
