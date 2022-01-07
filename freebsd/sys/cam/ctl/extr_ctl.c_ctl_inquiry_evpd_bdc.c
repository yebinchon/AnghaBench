
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int u_int ;
struct scsi_vpd_block_device_characteristics {int device; int wab_wac_ff; int flags; int medium_rotation_rate; int page_length; int page_code; } ;
struct TYPE_4__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {int lun_type; int options; } ;


 int CTL_DEFAULT_ROTATION_RATE ;
 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SID_QUAL_LU_CONNECTED ;
 int SID_QUAL_LU_OFFLINE ;
 int SVPD_BDC ;
 int SVPD_FUAB ;
 int SVPD_RBWZ ;
 int SVPD_VBULS ;
 int T_DIRECT ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 char* dnvlist_get_string (int ,char*,int *) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_ulto2b (int,int ) ;
 int strtol (char const*,int *,int ) ;

__attribute__((used)) static int
ctl_inquiry_evpd_bdc(struct ctl_scsiio *ctsio, int alloc_len)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_vpd_block_device_characteristics *bdc_ptr;
 const char *value;
 u_int i;

 ctsio->kern_data_ptr = malloc(sizeof(*bdc_ptr), M_CTL, M_WAITOK | M_ZERO);
 bdc_ptr = (struct scsi_vpd_block_device_characteristics *)ctsio->kern_data_ptr;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(sizeof(*bdc_ptr), alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;






 if (lun != ((void*)0))
  bdc_ptr->device = (SID_QUAL_LU_CONNECTED << 5) |
      lun->be_lun->lun_type;
 else
  bdc_ptr->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;
 bdc_ptr->page_code = SVPD_BDC;
 scsi_ulto2b(sizeof(*bdc_ptr) - 4, bdc_ptr->page_length);
 if (lun != ((void*)0) &&
     (value = dnvlist_get_string(lun->be_lun->options, "rpm", ((void*)0))) != ((void*)0))
  i = strtol(value, ((void*)0), 0);
 else
  i = CTL_DEFAULT_ROTATION_RATE;
 scsi_ulto2b(i, bdc_ptr->medium_rotation_rate);
 if (lun != ((void*)0) &&
     (value = dnvlist_get_string(lun->be_lun->options, "formfactor", ((void*)0))) != ((void*)0))
  i = strtol(value, ((void*)0), 0);
 else
  i = 0;
 bdc_ptr->wab_wac_ff = (i & 0x0f);
 bdc_ptr->flags = SVPD_RBWZ | SVPD_FUAB | SVPD_VBULS;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
