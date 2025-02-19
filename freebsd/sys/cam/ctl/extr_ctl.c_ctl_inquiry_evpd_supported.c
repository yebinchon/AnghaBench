
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_vpd_supported_pages {int device; int length; int * page_list; } ;
struct TYPE_4__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int lun_type; } ;


 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SCSI_EVPD_NUM_SUPPORTED_PAGES ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_QUAL_LU_OFFLINE ;
 int SVPD_BDC ;
 int SVPD_BLOCK_LIMITS ;
 int SVPD_DEVICE_ID ;
 int SVPD_EXTENDED_INQUIRY_DATA ;
 int SVPD_LBP ;
 int SVPD_MODE_PAGE_POLICY ;
 int SVPD_SCSI_PORTS ;
 int SVPD_SCSI_SFS ;
 int SVPD_SCSI_TPC ;
 int SVPD_SUPPORTED_PAGES ;
 int SVPD_UNIT_SERIAL_NUMBER ;
 int T_DIRECT ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static int
ctl_inquiry_evpd_supported(struct ctl_scsiio *ctsio, int alloc_len)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_vpd_supported_pages *pages;
 int sup_page_size;
 int p;

 sup_page_size = sizeof(struct scsi_vpd_supported_pages) *
     SCSI_EVPD_NUM_SUPPORTED_PAGES;
 ctsio->kern_data_ptr = malloc(sup_page_size, M_CTL, M_WAITOK | M_ZERO);
 pages = (struct scsi_vpd_supported_pages *)ctsio->kern_data_ptr;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_data_len = min(sup_page_size, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;






 if (lun != ((void*)0))
  pages->device = (SID_QUAL_LU_CONNECTED << 5) |
    lun->be_lun->lun_type;
 else
  pages->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;

 p = 0;

 pages->page_list[p++] = SVPD_SUPPORTED_PAGES;

 pages->page_list[p++] = SVPD_UNIT_SERIAL_NUMBER;

 pages->page_list[p++] = SVPD_DEVICE_ID;

 pages->page_list[p++] = SVPD_EXTENDED_INQUIRY_DATA;

 pages->page_list[p++] = SVPD_MODE_PAGE_POLICY;

 pages->page_list[p++] = SVPD_SCSI_PORTS;

 pages->page_list[p++] = SVPD_SCSI_TPC;

 pages->page_list[p++] = SVPD_SCSI_SFS;
 if (lun != ((void*)0) && lun->be_lun->lun_type == T_DIRECT) {

  pages->page_list[p++] = SVPD_BLOCK_LIMITS;

  pages->page_list[p++] = SVPD_BDC;

  pages->page_list[p++] = SVPD_LBP;
 }
 pages->length = p;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
