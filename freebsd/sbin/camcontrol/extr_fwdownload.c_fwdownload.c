
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct fw_vendor {scalar_t__ type; int timeout_ms; size_t timeout_type; } ;
struct cam_device {char* device_name; int dev_unit_num; } ;
typedef char ata_params ;
typedef scalar_t__ camcontrol_devtype ;
struct TYPE_2__ {char* timeout_desc; } ;


 scalar_t__ CC_DT_ATA ;
 scalar_t__ CC_DT_SATL ;
 scalar_t__ CC_DT_SCSI ;
 int MSG_SIMPLE_Q_TAG ;
 scalar_t__ VENDOR_UNKNOWN ;
 scalar_t__ ata_do_identify (struct cam_device*,int,int,union ccb*,char**) ;
 int ata_print_ident (char*) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 int camxferrate (struct cam_device*) ;
 int errx (int,char*,...) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ fw_download_img (struct cam_device*,struct fw_vendor*,char*,int,int,int,int,int,int,char*,scalar_t__) ;
 int fw_get_timeout (struct cam_device*,struct fw_vendor*,int,int,int) ;
 struct fw_vendor* fw_get_vendor (struct cam_device*,char*) ;
 char* fw_read_img (struct cam_device*,int,int,int,char*,struct fw_vendor*,int*) ;
 TYPE_1__* fw_timeout_desc_table ;
 int get_confirmation () ;
 int get_device_type (struct cam_device*,int,int,int,scalar_t__*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int printf (char*,char*,int ) ;
 scalar_t__ scsidoinquiry (struct cam_device*,int,char**,char*,int ,int ,int) ;
 int stderr ;
 int stdout ;
 int warnx (char*) ;

int
fwdownload(struct cam_device *device, int argc, char **argv,
    char *combinedopt, int printerrors, int task_attr, int retry_count,
    int timeout)
{
 union ccb *ccb = ((void*)0);
 struct fw_vendor *vp;
 char *fw_img_path = ((void*)0);
 struct ata_params *ident_buf = ((void*)0);
 camcontrol_devtype devtype;
 char *buf = ((void*)0);
 int img_size;
 int c;
 int sim_mode = 0;
 int confirmed = 0;
 int quiet = 0;
 int retval = 0;

 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch (c) {
  case 'f':
   fw_img_path = optarg;
   break;
  case 'q':
   quiet = 1;
   break;
  case 's':
   sim_mode = 1;
   break;
  case 'y':
   confirmed = 1;
   break;
  default:
   break;
  }
 }

 if (fw_img_path == ((void*)0))
  errx(1, "you must specify a firmware image file using -f "
       "option");

 retval = get_device_type(device, retry_count, timeout, printerrors,
     &devtype);
 if (retval != 0)
  errx(1, "Unable to determine device type");

 if ((devtype == CC_DT_ATA)
  || (devtype == CC_DT_SATL)) {
  ccb = cam_getccb(device);
  if (ccb == ((void*)0)) {
   warnx("couldn't allocate CCB");
   retval = 1;
   goto bailout;
  }

  if (ata_do_identify(device, retry_count, timeout, ccb,
            &ident_buf) != 0) {
   retval = 1;
   goto bailout;
  }
 } else if (devtype != CC_DT_SCSI)
  errx(1, "Unsupported device type %d", devtype);

 vp = fw_get_vendor(device, ident_buf);







 if (((vp == ((void*)0))
   || (vp->type == VENDOR_UNKNOWN))
  && (devtype == CC_DT_SCSI))
  errx(1, "Unsupported device");

 retval = fw_get_timeout(device, vp, task_attr, retry_count, timeout);
 if (retval != 0) {
  warnx("Unable to get a firmware download timeout value");
  goto bailout;
 }

 buf = fw_read_img(device, retry_count, timeout, quiet, fw_img_path,
     vp, &img_size);
 if (buf == ((void*)0)) {
  retval = 1;
  goto bailout;
 }

 if (!confirmed) {
  fprintf(stdout, "You are about to download firmware image (%s)"
      " into the following device:\n",
      fw_img_path);
  if (devtype == CC_DT_SCSI) {
   if (scsidoinquiry(device, argc, argv, combinedopt,
       MSG_SIMPLE_Q_TAG, 0, 5000) != 0) {
    warnx("Error sending inquiry");
    retval = 1;
    goto bailout;
   }
  } else {
   printf("%s%d: ", device->device_name,
       device->dev_unit_num);
   ata_print_ident(ident_buf);
   camxferrate(device);
   free(ident_buf);
  }
  fprintf(stdout, "Using a timeout of %u ms, which is %s.\n",
   vp->timeout_ms,
   fw_timeout_desc_table[vp->timeout_type].timeout_desc);
  fprintf(stdout, "\nIt may damage your drive. ");
  if (!get_confirmation()) {
   retval = 1;
   goto bailout;
  }
 }
 if ((sim_mode != 0) && (quiet == 0))
  fprintf(stdout, "Running in simulation mode\n");

 if (fw_download_img(device, vp, buf, img_size, sim_mode, printerrors,
     quiet, retry_count, vp->timeout_ms, fw_img_path, devtype) != 0) {
  fprintf(stderr, "Firmware download failed\n");
  retval = 1;
  goto bailout;
 } else if (quiet == 0)
  fprintf(stdout, "Firmware download successful\n");

bailout:
 cam_freeccb(ccb);
 free(buf);
 return (retval);
}
