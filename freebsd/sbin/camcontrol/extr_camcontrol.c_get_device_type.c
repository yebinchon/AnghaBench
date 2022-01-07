
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ config; } ;
struct ccb_getdev {int protocol; TYPE_1__ ident_data; } ;
struct cam_device {int dummy; } ;
typedef int camcontrol_devtype ;


 int CC_DT_ATA ;
 int CC_DT_MMCSD ;
 int CC_DT_NVME ;
 int CC_DT_SATL ;
 int CC_DT_SCSI ;
 int CC_DT_UNKNOWN ;






 int SVPD_ATA_INFORMATION ;
 int dev_has_vpd_page (struct cam_device*,int ,int,int,int) ;
 int get_cgd (struct cam_device*,struct ccb_getdev*) ;

int
get_device_type(struct cam_device *dev, int retry_count, int timeout,
      int verbosemode, camcontrol_devtype *devtype)
{
 struct ccb_getdev cgd;
 int retval;

 retval = get_cgd(dev, &cgd);
 if (retval != 0)
  goto bailout;

 switch (cgd.protocol) {
 case 128:
  break;
 case 133:
 case 132:
 case 129:
  *devtype = CC_DT_ATA;
  goto bailout;
  break;
 case 130:
  *devtype = CC_DT_NVME;
  goto bailout;
  break;
 case 131:
  *devtype = CC_DT_MMCSD;
  goto bailout;
  break;
 default:
  *devtype = CC_DT_UNKNOWN;
  goto bailout;
  break;
 }

 if (retry_count == -1) {






  if (cgd.ident_data.config != 0)
   *devtype = CC_DT_SATL;
  else
   *devtype = CC_DT_SCSI;
 } else {
  retval = dev_has_vpd_page(dev, SVPD_ATA_INFORMATION, retry_count,
      timeout, verbosemode);
  if (retval == 1)
   *devtype = CC_DT_SATL;
  else
   *devtype = CC_DT_SCSI;
 }
 retval = 0;

bailout:
 return (retval);
}
