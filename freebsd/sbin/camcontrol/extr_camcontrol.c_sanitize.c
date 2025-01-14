
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_sense_data {int dummy; } ;
struct TYPE_5__ {scalar_t__ sense_resid; scalar_t__ sense_len; struct scsi_sense_data sense_data; } ;
struct TYPE_4__ {int status; int flags; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct stat {scalar_t__ st_size; } ;
struct scsi_sanitize_parameter_list {int byte1; int length; } ;
struct cam_device {char* device_name; int dev_unit_num; } ;
typedef scalar_t__ ata_params ;
typedef int str ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ camcontrol_devtype ;


 int AP_EXTEND ;
 int AP_PROTO_NON_DATA ;
 int ATA_SANITIZE ;
 int CAM_ARG_ERR_RECOVER ;
 int CAM_ARG_VERBOSE ;
 int CAM_DEV_QFRZDIS ;
 int CAM_DIR_NONE ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (TYPE_2__*) ;
 scalar_t__ CC_DT_ATA ;
 scalar_t__ CC_DT_SATL ;
 scalar_t__ CC_DT_SCSI ;
 unsigned int CC_DT_UNKNOWN ;
 int MSG_SIMPLE_Q_TAG ;
 int O_RDONLY ;
 int SSD_FULL_SIZE ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int SSZPL_INVERT ;
 scalar_t__ SSZPL_MAX_PATTERN_LENGTH ;
 scalar_t__ SSZ_IMMED ;
 scalar_t__ SSZ_SERVICE_ACTION_BLOCK_ERASE ;
 scalar_t__ SSZ_SERVICE_ACTION_CRYPTO_ERASE ;
 scalar_t__ SSZ_SERVICE_ACTION_EXIT_MODE_FAILURE ;
 scalar_t__ SSZ_SERVICE_ACTION_OVERWRITE ;
 scalar_t__ SSZ_UNRESTRICTED_EXIT ;
 int arglist ;
 int ata_do_cmd (struct cam_device*,union ccb*,int,int ,int,int ,int ,int ,int,int,int,int *,int ,int,int) ;
 int ata_do_identify (struct cam_device*,int,int,union ccb*,scalar_t__**) ;
 int ata_print_ident (scalar_t__*) ;
 int atoi (char*) ;
 scalar_t__* calloc (int,scalar_t__) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int close (int) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int free (scalar_t__*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int get_confirmation () ;
 int get_device_type (struct cam_device*,int,int ,int ,scalar_t__*) ;
 int getopt (int,char**,char*) ;
 int open (char const*,int ) ;
 char* optarg ;
 int printf (char*,char*,int ) ;
 scalar_t__ read (int,scalar_t__*,scalar_t__) ;
 int sanitize_wait_ata (struct cam_device*,union ccb*,int,scalar_t__) ;
 int sanitize_wait_scsi (struct cam_device*,union ccb*,int,int) ;
 int scsi_4btoul (scalar_t__*) ;
 int scsi_extract_sense_len (struct scsi_sense_data*,scalar_t__,int*,int*,int*,int*,int) ;
 int scsi_sanitize (TYPE_2__*,int,int *,int,scalar_t__,int ,scalar_t__*,scalar_t__,int ,int) ;
 int scsi_ulto2b (scalar_t__,int ) ;
 int scsidoinquiry (struct cam_device*,int,char**,char*,int,int,int) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strcasecmp (char*,char*) ;
 int strtol (char*,int *,int ) ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
sanitize(struct cam_device *device, int argc, char **argv,
      char *combinedopt, int task_attr, int retry_count, int timeout)
{
 union ccb *ccb;
 u_int8_t action = 0;
 int c;
 int ycount = 0, quiet = 0;
 int error = 0;
 int use_timeout;
 int immediate = 1;
 int invert = 0;
 int passes = 0;
 int ause = 0;
 int fd = -1;
 const char *pattern = ((void*)0);
 u_int8_t *data_ptr = ((void*)0);
 u_int32_t dxfer_len = 0;
 uint8_t byte2;
 uint16_t feature, count;
 uint64_t lba;
 int reportonly = 0;
 camcontrol_devtype dt;




 error = get_device_type(device, -1, 0, 0, &dt);
 if (error != 0 || (unsigned)dt > CC_DT_UNKNOWN) {
  warnx("sanitize: can't get device type");
  return (1);
 }

 ccb = cam_getccb(device);

 if (ccb == ((void*)0)) {
  warnx("sanitize: error allocating ccb");
  return (1);
 }

 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch(c) {
  case 'a':
   if (strcasecmp(optarg, "overwrite") == 0)
    action = SSZ_SERVICE_ACTION_OVERWRITE;
   else if (strcasecmp(optarg, "block") == 0)
    action = SSZ_SERVICE_ACTION_BLOCK_ERASE;
   else if (strcasecmp(optarg, "crypto") == 0)
    action = SSZ_SERVICE_ACTION_CRYPTO_ERASE;
   else if (strcasecmp(optarg, "exitfailure") == 0)
    action = SSZ_SERVICE_ACTION_EXIT_MODE_FAILURE;
   else {
    warnx("invalid service operation \"%s\"",
          optarg);
    error = 1;
    goto sanitize_bailout;
   }
   break;
  case 'c':
   passes = strtol(optarg, ((void*)0), 0);
   if (passes < 1 || passes > 31) {
    warnx("invalid passes value %d", passes);
    error = 1;
    goto sanitize_bailout;
   }
   break;
  case 'I':
   invert = 1;
   break;
  case 'P':
   pattern = optarg;
   break;
  case 'q':
   quiet++;
   break;
  case 'U':
   ause = 1;
   break;
  case 'r':
   reportonly = 1;
   break;
  case 'w':

   if (dt == CC_DT_SCSI)
    immediate = 0;
   break;
  case 'y':
   ycount++;
   break;
  }
 }

 if (reportonly)
  goto doreport;

 if (action == 0) {
  warnx("an action is required");
  error = 1;
  goto sanitize_bailout;
 } else if (action == SSZ_SERVICE_ACTION_OVERWRITE) {
  struct scsi_sanitize_parameter_list *pl;
  struct stat sb;
  ssize_t sz, amt;

  if (pattern == ((void*)0)) {
   warnx("overwrite action requires -P argument");
   error = 1;
   goto sanitize_bailout;
  }
  fd = open(pattern, O_RDONLY);
  if (fd < 0) {
   warn("cannot open pattern file %s", pattern);
   error = 1;
   goto sanitize_bailout;
  }
  if (fstat(fd, &sb) < 0) {
   warn("cannot stat pattern file %s", pattern);
   error = 1;
   goto sanitize_bailout;
  }
  sz = sb.st_size;
  if (sz > SSZPL_MAX_PATTERN_LENGTH) {
   warnx("pattern file size exceeds maximum value %d",
         SSZPL_MAX_PATTERN_LENGTH);
   error = 1;
   goto sanitize_bailout;
  }
  dxfer_len = sizeof(*pl) + sz;
  data_ptr = calloc(1, dxfer_len);
  if (data_ptr == ((void*)0)) {
   warnx("cannot allocate parameter list buffer");
   error = 1;
   goto sanitize_bailout;
  }

  amt = read(fd, data_ptr + sizeof(*pl), sz);
  if (amt < 0) {
   warn("cannot read pattern file");
   error = 1;
   goto sanitize_bailout;
  } else if (amt != sz) {
   warnx("short pattern file read");
   error = 1;
   goto sanitize_bailout;
  }

  pl = (struct scsi_sanitize_parameter_list *)data_ptr;
  if (passes == 0)
   pl->byte1 = 1;
  else
   pl->byte1 = passes;
  if (invert != 0)
   pl->byte1 |= SSZPL_INVERT;
  scsi_ulto2b(sz, pl->length);
 } else {
  const char *arg;

  if (passes != 0)
   arg = "-c";
  else if (invert != 0)
   arg = "-I";
  else if (pattern != ((void*)0))
   arg = "-P";
  else
   arg = ((void*)0);
  if (arg != ((void*)0)) {
   warnx("%s argument only valid with overwrite "
         "operation", arg);
   error = 1;
   goto sanitize_bailout;
  }
 }

 if (quiet == 0 && ycount == 0) {
  fprintf(stdout, "You are about to REMOVE ALL DATA from the "
   "following device:\n");

  if (dt == CC_DT_SCSI) {
   error = scsidoinquiry(device, argc, argv, combinedopt,
           task_attr, retry_count, timeout);
  } else if (dt == CC_DT_ATA || dt == CC_DT_SATL) {
   struct ata_params *ident_buf;
   error = ata_do_identify(device, retry_count, timeout,
      ccb, &ident_buf);
   if (error == 0) {
    printf("%s%d: ", device->device_name,
        device->dev_unit_num);
    ata_print_ident(ident_buf);
    free(ident_buf);
   }
  } else
   error = 1;

  if (error != 0) {
   warnx("sanitize: error sending inquiry");
   goto sanitize_bailout;
  }
 }

 if (ycount == 0) {
  if (!get_confirmation()) {
   error = 1;
   goto sanitize_bailout;
  }
 }

 if (timeout != 0)
  use_timeout = timeout;
 else
  use_timeout = (immediate ? 10 : 10800) * 1000;

 if (immediate == 0 && quiet == 0) {
  fprintf(stdout, "Current sanitize timeout is %d seconds\n",
   use_timeout / 1000);
 }






 if (immediate == 0 && ycount == 0 && timeout == 0) {
  char str[1024];
  int new_timeout = 0;

  fprintf(stdout, "Enter new timeout in seconds or press\n"
   "return to keep the current timeout [%d] ",
   use_timeout / 1000);

  if (fgets(str, sizeof(str), stdin) != ((void*)0)) {
   if (str[0] != '\0')
    new_timeout = atoi(str);
  }

  if (new_timeout != 0) {
   use_timeout = new_timeout * 1000;
   fprintf(stdout, "Using new timeout value %d\n",
    use_timeout / 1000);
  }
 }

 if (dt == CC_DT_SCSI) {
  byte2 = action;
  if (ause != 0)
   byte2 |= SSZ_UNRESTRICTED_EXIT;
  if (immediate != 0)
   byte2 |= SSZ_IMMED;
  scsi_sanitize(&ccb->csio,
                       retry_count,
                      ((void*)0),
                          task_attr,
                     byte2,
                       0,
                        data_ptr,
                         dxfer_len,
                         SSD_FULL_SIZE,
                       use_timeout);

  ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;
  if (arglist & CAM_ARG_ERR_RECOVER)
   ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;
  if (cam_send_ccb(device, ccb) < 0) {
   warn("error sending sanitize command");
   error = 1;
   goto sanitize_bailout;
  }
 } else if (dt == CC_DT_ATA || dt == CC_DT_SATL) {
  if (action == SSZ_SERVICE_ACTION_OVERWRITE) {
   feature = 0x14;
   lba = 0x4F5700000000 | scsi_4btoul(data_ptr + 4);
   count = (passes == 0) ? 1 : (passes >= 16) ? 0 : passes;
   if (invert)
    count |= 0x80;
   if (ause)
    count |= 0x10;
  } else if (action == SSZ_SERVICE_ACTION_BLOCK_ERASE) {
   feature = 0x12;
   lba = 0x0000426B4572;
   count = 0;
   if (ause)
    count |= 0x10;
  } else if (action == SSZ_SERVICE_ACTION_CRYPTO_ERASE) {
   feature = 0x11;
   lba = 0x000043727970;
   count = 0;
   if (ause)
    count |= 0x10;
  } else if (action == SSZ_SERVICE_ACTION_EXIT_MODE_FAILURE) {
   feature = 0x00;
   lba = 0;
   count = 1;
  } else {
   error = 1;
   goto sanitize_bailout;
  }

  error = ata_do_cmd(device,
       ccb,
       retry_count,
                CAM_DIR_NONE,
                   AP_PROTO_NON_DATA | AP_EXTEND,
                    0,
                     MSG_SIMPLE_Q_TAG,
                  ATA_SANITIZE,
                   feature,
              lba,
                       count,
                   ((void*)0),
                    0,
                   use_timeout,
                  1);
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  struct scsi_sense_data *sense;
  int error_code, sense_key, asc, ascq;

  if ((ccb->ccb_h.status & CAM_STATUS_MASK) ==
      CAM_SCSI_STATUS_ERROR) {
   sense = &ccb->csio.sense_data;
   scsi_extract_sense_len(sense, ccb->csio.sense_len -
       ccb->csio.sense_resid, &error_code, &sense_key,
       &asc, &ascq, 1);

   if (sense_key == SSD_KEY_ILLEGAL_REQUEST &&
       asc == 0x20 && ascq == 0x00)
    warnx("sanitize is not supported by "
          "this device");
   else
    warnx("error sanitizing this device");
  } else
   warnx("error sanitizing this device");

  if (arglist & CAM_ARG_VERBOSE) {
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  }
  error = 1;
  goto sanitize_bailout;
 }







 if (immediate == 0) {
  if (quiet == 0) {
   fprintf(stdout, "Sanitize Complete\n");
  }
  goto sanitize_bailout;
 }

doreport:
 if (dt == CC_DT_SCSI) {
  error = sanitize_wait_scsi(device, ccb, task_attr, quiet);
 } else if (dt == CC_DT_ATA || dt == CC_DT_SATL) {
  error = sanitize_wait_ata(device, ccb, quiet, dt);
 } else
  error = 1;
 if (error == 0 && quiet == 0)
  fprintf(stdout, "Sanitize Complete                      \n");

sanitize_bailout:
 if (fd >= 0)
  close(fd);
 if (data_ptr != ((void*)0))
  free(data_ptr);
 cam_freeccb(ccb);

 return (error);
}
