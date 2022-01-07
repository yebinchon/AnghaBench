
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_sense_data {int dummy; } ;
struct TYPE_7__ {scalar_t__ sense_resid; scalar_t__ sense_len; struct scsi_sense_data sense_data; } ;
struct TYPE_6__ {int status; int flags; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef int uintmax_t ;
typedef int uint8_t ;
typedef unsigned long long uint32_t ;
typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct format_defect_list_header {int byte2; } ;
struct cam_device {int dummy; } ;
typedef int str ;
typedef int fh ;
typedef int cam_status ;


 int CAM_ARG_ERR_RECOVER ;
 int CAM_ARG_VERBOSE ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (TYPE_2__*) ;
 int FU_DLH_IMMED ;
 int FU_FMT_DATA ;
 int SSD_FULL_SIZE ;
 int SSD_KEY_NOT_READY ;
 int arglist ;
 int atoi (char*) ;
 int bzero (struct format_defect_list_header*,int) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 int cam_send_ccb (struct cam_device*,union ccb*) ;
 int fflush (int ) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int get_confirmation () ;
 int getopt (int,char**,char*) ;
 unsigned long long scsi_2btoul (int *) ;
 int scsi_extract_sense_len (struct scsi_sense_data*,scalar_t__,int*,int*,int*,int*,int) ;
 int scsi_format_unit (TYPE_2__*,int,int *,int,int ,int ,int *,int,int ,int) ;
 scalar_t__ scsi_get_sks (struct scsi_sense_data*,scalar_t__,int *) ;
 int scsi_sense_print (struct cam_device*,TYPE_2__*,int ) ;
 int scsi_test_unit_ready (TYPE_2__*,int ,int *,int,int ,int) ;
 int scsidoinquiry (struct cam_device*,int,char**,char*,int,int,int) ;
 int sleep (int) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int warn (char const*) ;
 int warnx (char const*,...) ;

__attribute__((used)) static int
scsiformat(struct cam_device *device, int argc, char **argv,
    char *combinedopt, int task_attr, int retry_count, int timeout)
{
 union ccb *ccb;
 int c;
 int ycount = 0, quiet = 0;
 int error = 0, retval = 0;
 int use_timeout = 10800 * 1000;
 int immediate = 1;
 struct format_defect_list_header fh;
 u_int8_t *data_ptr = ((void*)0);
 u_int32_t dxfer_len = 0;
 u_int8_t byte2 = 0;
 int num_warnings = 0;
 int reportonly = 0;

 ccb = cam_getccb(device);

 if (ccb == ((void*)0)) {
  warnx("scsiformat: error allocating ccb");
  return (1);
 }

 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch(c) {
  case 'q':
   quiet++;
   break;
  case 'r':
   reportonly = 1;
   break;
  case 'w':
   immediate = 0;
   break;
  case 'y':
   ycount++;
   break;
  }
 }

 if (reportonly)
  goto doreport;

 if (quiet == 0 && ycount == 0) {
  fprintf(stdout, "You are about to REMOVE ALL DATA from the "
   "following device:\n");

  error = scsidoinquiry(device, argc, argv, combinedopt,
          task_attr, retry_count, timeout);

  if (error != 0) {
   warnx("scsiformat: error sending inquiry");
   goto scsiformat_bailout;
  }
 }

 if (ycount == 0) {
  if (!get_confirmation()) {
   error = 1;
   goto scsiformat_bailout;
  }
 }

 if (timeout != 0)
  use_timeout = timeout;

 if (quiet == 0) {
  fprintf(stdout, "Current format timeout is %d seconds\n",
   use_timeout / 1000);
 }






 if ((ycount == 0)
  && (timeout == 0)) {
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





 bzero(&fh, sizeof(fh));





 if (immediate != 0) {
  fh.byte2 = FU_DLH_IMMED;
  data_ptr = (u_int8_t *)&fh;
  dxfer_len = sizeof(fh);
  byte2 = FU_FMT_DATA;
 } else if (quiet == 0) {
  fprintf(stdout, "Formatting...");
  fflush(stdout);
 }

 scsi_format_unit(&ccb->csio,
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

 if (((retval = cam_send_ccb(device, ccb)) < 0)
  || ((immediate == 0)
    && ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP))) {
  const char errstr[] = "error sending format command";

  if (retval < 0)
   warn(errstr);
  else
   warnx(errstr);

  if (arglist & CAM_ARG_VERBOSE) {
   cam_error_print(device, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  }
  error = 1;
  goto scsiformat_bailout;
 }







 if (immediate == 0) {
  if (quiet == 0) {
   fprintf(stdout, "Format Complete\n");
  }
  goto scsiformat_bailout;
 }

doreport:
 do {
  cam_status status;

  CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);






  scsi_test_unit_ready(&ccb->csio,
                       0,
                      ((void*)0),
                          task_attr,
                         SSD_FULL_SIZE,
                       5000);


  ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

  retval = cam_send_ccb(device, ccb);





  if (retval < 0) {
   warn("error sending TEST UNIT READY command");
   error = 1;
   goto scsiformat_bailout;
  }

  status = ccb->ccb_h.status & CAM_STATUS_MASK;

  if ((status != CAM_REQ_CMP)
   && (status == CAM_SCSI_STATUS_ERROR)
   && ((ccb->ccb_h.status & CAM_AUTOSNS_VALID) != 0)) {
   struct scsi_sense_data *sense;
   int error_code, sense_key, asc, ascq;

   sense = &ccb->csio.sense_data;
   scsi_extract_sense_len(sense, ccb->csio.sense_len -
       ccb->csio.sense_resid, &error_code, &sense_key,
       &asc, &ascq, 1);
   if ((sense_key == SSD_KEY_NOT_READY)
    && (asc == 0x04) && (ascq == 0x04)) {
    uint8_t sks[3];

    if ((scsi_get_sks(sense, ccb->csio.sense_len -
         ccb->csio.sense_resid, sks) == 0)
     && (quiet == 0)) {
     uint32_t val;
     u_int64_t percentage;

     val = scsi_2btoul(&sks[1]);
     percentage = 10000ull * val;

     fprintf(stdout,
      "\rFormatting:  %ju.%02u %% "
      "(%u/%d) done",
      (uintmax_t)(percentage /
      (0x10000 * 100)),
      (unsigned)((percentage /
      0x10000) % 100),
      val, 0x10000);
     fflush(stdout);
    } else if ((quiet == 0)
     && (++num_warnings <= 1)) {
     warnx("Unexpected SCSI Sense Key "
           "Specific value returned "
           "during format:");
     scsi_sense_print(device, &ccb->csio,
        stderr);
     warnx("Unable to print status "
           "information, but format will "
           "proceed.");
     warnx("will exit when format is "
           "complete");
    }
    sleep(1);
   } else {
    warnx("Unexpected SCSI error during format");
    cam_error_print(device, ccb, CAM_ESF_ALL,
      CAM_EPF_ALL, stderr);
    error = 1;
    goto scsiformat_bailout;
   }

  } else if (status != CAM_REQ_CMP) {
   warnx("Unexpected CAM status %#x", status);
   if (arglist & CAM_ARG_VERBOSE)
    cam_error_print(device, ccb, CAM_ESF_ALL,
      CAM_EPF_ALL, stderr);
   error = 1;
   goto scsiformat_bailout;
  }

 } while((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP);

 if (quiet == 0)
  fprintf(stdout, "\nFormat Complete\n");

scsiformat_bailout:

 cam_freeccb(ccb);

 return (error);
}
