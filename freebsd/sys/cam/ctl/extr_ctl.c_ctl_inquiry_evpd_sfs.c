
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_vpd_sfs {int device; int * page_length; int * codes; int page_code; } ;
struct TYPE_4__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int lun_type; int flags; } ;


 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_LUN_FLAG_UNMAP ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_QUAL_LU_OFFLINE ;
 int SVPD_SCSI_SFS ;
 int T_DIRECT ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_ulto2b (int,int *) ;

__attribute__((used)) static int
ctl_inquiry_evpd_sfs(struct ctl_scsiio *ctsio, int alloc_len)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_vpd_sfs *sfs_ptr;
 int sfs_page_size, n;

 sfs_page_size = sizeof(*sfs_ptr) + 5 * 2;
 ctsio->kern_data_ptr = malloc(sfs_page_size, M_CTL, M_WAITOK | M_ZERO);
 sfs_ptr = (struct scsi_vpd_sfs *)ctsio->kern_data_ptr;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_data_len = min(sfs_page_size, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;






 if (lun != ((void*)0))
  sfs_ptr->device = (SID_QUAL_LU_CONNECTED << 5) |
      lun->be_lun->lun_type;
 else
  sfs_ptr->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;

 sfs_ptr->page_code = SVPD_SCSI_SFS;
 n = 0;

 scsi_ulto2b(0x0001, &sfs_ptr->codes[2 * n++]);
 if (lun != ((void*)0) && lun->be_lun->lun_type == T_DIRECT) {

  scsi_ulto2b(0x0101, &sfs_ptr->codes[2 * n++]);

  scsi_ulto2b(0x0102, &sfs_ptr->codes[2 * n++]);
  if (lun->be_lun->flags & CTL_LUN_FLAG_UNMAP) {

   scsi_ulto2b(0x0103, &sfs_ptr->codes[2 * n++]);
  }


 }
 scsi_ulto2b(4 + 2 * n, sfs_ptr->page_length);

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
