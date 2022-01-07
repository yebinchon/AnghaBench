
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_vpd_mode_page_policy_descr {int dummy; } ;
struct scsi_vpd_mode_page_policy {int device; TYPE_2__* descr; int page_length; int page_code; } ;
struct TYPE_6__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_3__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_5__ {int page_code; int subpage_code; int policy; } ;
struct TYPE_4__ {int lun_type; } ;


 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_QUAL_LU_OFFLINE ;
 int SVPD_MODE_PAGE_POLICY ;
 int SVPD_MPP_SHARED ;
 int T_DIRECT ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_ulto2b (int,int ) ;

__attribute__((used)) static int
ctl_inquiry_evpd_mpp(struct ctl_scsiio *ctsio, int alloc_len)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_vpd_mode_page_policy *mpp_ptr;
 int data_len;

 data_len = sizeof(struct scsi_vpd_mode_page_policy) +
     sizeof(struct scsi_vpd_mode_page_policy_descr);

 ctsio->kern_data_ptr = malloc(data_len, M_CTL, M_WAITOK | M_ZERO);
 mpp_ptr = (struct scsi_vpd_mode_page_policy *)ctsio->kern_data_ptr;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_data_len = min(data_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;





 if (lun != ((void*)0))
  mpp_ptr->device = (SID_QUAL_LU_CONNECTED << 5) |
         lun->be_lun->lun_type;
 else
  mpp_ptr->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;
 mpp_ptr->page_code = SVPD_MODE_PAGE_POLICY;
 scsi_ulto2b(data_len - 4, mpp_ptr->page_length);
 mpp_ptr->descr[0].page_code = 0x3f;
 mpp_ptr->descr[0].subpage_code = 0xff;
 mpp_ptr->descr[0].policy = SVPD_MPP_SHARED;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
