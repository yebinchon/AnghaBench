
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_inquiry {int page_code; int length; } ;
struct ctl_scsiio {scalar_t__ cdb; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_2__ {int lun_type; } ;


 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int T_DIRECT ;
 int ctl_done (union ctl_io*) ;
 int ctl_inquiry_evpd_bdc (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_block_limits (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_devid (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_eid (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_lbp (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_mpp (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_scsi_ports (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_serial (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_sfs (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_supported (struct ctl_scsiio*,int) ;
 int ctl_inquiry_evpd_tpc (struct ctl_scsiio*,int) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int ,int ) ;
 int scsi_2btoul (int ) ;

__attribute__((used)) static int
ctl_inquiry_evpd(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_inquiry *cdb;
 int alloc_len, retval;

 cdb = (struct scsi_inquiry *)ctsio->cdb;
 alloc_len = scsi_2btoul(cdb->length);

 switch (cdb->page_code) {
 case 129:
  retval = ctl_inquiry_evpd_supported(ctsio, alloc_len);
  break;
 case 128:
  retval = ctl_inquiry_evpd_serial(ctsio, alloc_len);
  break;
 case 136:
  retval = ctl_inquiry_evpd_devid(ctsio, alloc_len);
  break;
 case 135:
  retval = ctl_inquiry_evpd_eid(ctsio, alloc_len);
  break;
 case 133:
  retval = ctl_inquiry_evpd_mpp(ctsio, alloc_len);
  break;
 case 132:
  retval = ctl_inquiry_evpd_scsi_ports(ctsio, alloc_len);
  break;
 case 130:
  retval = ctl_inquiry_evpd_tpc(ctsio, alloc_len);
  break;
 case 131:
  retval = ctl_inquiry_evpd_sfs(ctsio, alloc_len);
  break;
 case 137:
  if (lun == ((void*)0) || lun->be_lun->lun_type != T_DIRECT)
   goto err;
  retval = ctl_inquiry_evpd_block_limits(ctsio, alloc_len);
  break;
 case 138:
  if (lun == ((void*)0) || lun->be_lun->lun_type != T_DIRECT)
   goto err;
  retval = ctl_inquiry_evpd_bdc(ctsio, alloc_len);
  break;
 case 134:
  if (lun == ((void*)0) || lun->be_lun->lun_type != T_DIRECT)
   goto err;
  retval = ctl_inquiry_evpd_lbp(ctsio, alloc_len);
  break;
 default:
err:
  ctl_set_invalid_field(ctsio,
                        1,
                      1,
                    2,
                        0,
                  0);
  ctl_done((union ctl_io *)ctsio);
  retval = CTL_RETVAL_COMPLETE;
  break;
 }

 return (retval);
}
