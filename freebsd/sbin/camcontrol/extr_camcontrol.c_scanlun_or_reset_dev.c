
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int priority; } ;
struct TYPE_6__ {int timeout; int status; TYPE_2__ pinfo; scalar_t__ target_lun; scalar_t__ target_id; scalar_t__ path_id; int func_code; } ;
struct TYPE_4__ {int flags; } ;
union ccb {TYPE_3__ ccb_h; TYPE_1__ crcn; } ;
typedef scalar_t__ uintmax_t ;
typedef scalar_t__ target_id_t ;
struct cam_device {int dummy; } ;
typedef scalar_t__ path_id_t ;
typedef scalar_t__ lun_id_t ;


 int CAMIOCOMMAND ;
 int CAM_BDR_SENT ;
 scalar_t__ CAM_BUS_WILDCARD ;
 int CAM_FLAG_NONE ;
 scalar_t__ CAM_LUN_WILDCARD ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 scalar_t__ CAM_TARGET_WILDCARD ;
 int O_RDWR ;
 scalar_t__ XPT_DEVICE ;
 int XPT_RESET_DEV ;
 int XPT_SCAN_LUN ;
 int bzero (union ccb*,int) ;
 int cam_close_device (struct cam_device*) ;
 scalar_t__ cam_errbuf ;
 struct cam_device* cam_open_btl (scalar_t__,scalar_t__,scalar_t__,int ,int *) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int close (int) ;
 int fprintf (int ,char*,char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ ioctl (int,int ,union ccb*) ;
 int open (scalar_t__,int ) ;
 int stdout ;
 int warn (char*,...) ;
 int warnx (char*,scalar_t__) ;

__attribute__((used)) static int
scanlun_or_reset_dev(path_id_t bus, target_id_t target, lun_id_t lun, int scan)
{
 union ccb ccb;
 struct cam_device *device;
 int fd;

 device = ((void*)0);

 if (bus == CAM_BUS_WILDCARD) {
  warnx("invalid bus number %d", bus);
  return (1);
 }

 if (target == CAM_TARGET_WILDCARD) {
  warnx("invalid target number %d", target);
  return (1);
 }

 if (lun == CAM_LUN_WILDCARD) {
  warnx("invalid lun number %jx", (uintmax_t)lun);
  return (1);
 }

 fd = -1;

 bzero(&ccb, sizeof(union ccb));

 if (scan) {
  if ((fd = open(XPT_DEVICE, O_RDWR)) < 0) {
   warnx("error opening transport layer device %s\n",
       XPT_DEVICE);
   warn("%s", XPT_DEVICE);
   return (1);
  }
 } else {
  device = cam_open_btl(bus, target, lun, O_RDWR, ((void*)0));
  if (device == ((void*)0)) {
   warnx("%s", cam_errbuf);
   return (1);
  }
 }

 ccb.ccb_h.func_code = (scan)? XPT_SCAN_LUN : XPT_RESET_DEV;
 ccb.ccb_h.path_id = bus;
 ccb.ccb_h.target_id = target;
 ccb.ccb_h.target_lun = lun;
 ccb.ccb_h.timeout = 5000;
 ccb.crcn.flags = CAM_FLAG_NONE;


 ccb.ccb_h.pinfo.priority = 5;

 if (scan) {
  if (ioctl(fd, CAMIOCOMMAND, &ccb) < 0) {
   warn("CAMIOCOMMAND ioctl failed");
   close(fd);
   return (1);
  }
 } else {
  if (cam_send_ccb(device, &ccb) < 0) {
   warn("error sending XPT_RESET_DEV CCB");
   cam_close_device(device);
   return (1);
  }
 }

 if (scan)
  close(fd);
 else
  cam_close_device(device);




 if (((ccb.ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP)
  || ((!scan)
   && ((ccb.ccb_h.status & CAM_STATUS_MASK) == CAM_BDR_SENT))) {
  fprintf(stdout, "%s of %d:%d:%jx was successful\n",
      scan? "Re-scan" : "Reset", bus, target, (uintmax_t)lun);
  return (0);
 } else {
  fprintf(stdout, "%s of %d:%d:%jx returned error %#x\n",
      scan? "Re-scan" : "Reset", bus, target, (uintmax_t)lun,
      ccb.ccb_h.status & CAM_STATUS_MASK);
  return (1);
 }
}
