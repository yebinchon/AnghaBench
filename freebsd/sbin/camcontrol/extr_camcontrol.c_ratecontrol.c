
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct ccb_trans_settings_ata {int flags; int valid; } ;
struct TYPE_7__ {scalar_t__ valid; struct ccb_trans_settings_scsi scsi; struct ccb_trans_settings_ata ata; } ;
struct ccb_trans_settings_sata {scalar_t__ revision; int mode; int valid; } ;
struct ccb_trans_settings_pata {int mode; int valid; } ;
struct ccb_trans_settings_spi {int sync_offset; int bus_width; int valid; int sync_period; int flags; } ;
struct TYPE_6__ {scalar_t__ valid; struct ccb_trans_settings_sata sata; struct ccb_trans_settings_pata ata; struct ccb_trans_settings_spi spi; } ;
struct TYPE_9__ {scalar_t__ transport; scalar_t__ protocol; TYPE_2__ proto_specific; TYPE_1__ xport_specific; } ;
struct TYPE_8__ {int status; int func_code; } ;
union ccb {TYPE_4__ cts; TYPE_3__ ccb_h; } ;
struct ccb_pathinq {int hba_inquiry; } ;
struct cam_device {int dummy; } ;


 int CAM_ARG_VERBOSE ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (TYPE_4__*) ;
 int CTS_ATA_FLAGS_TAG_ENB ;
 int CTS_ATA_VALID_MODE ;
 int CTS_SATA_VALID_MODE ;
 int CTS_SATA_VALID_REVISION ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 int PI_WIDE_32 ;
 scalar_t__ PROTO_ATA ;
 scalar_t__ PROTO_SCSI ;
 scalar_t__ XPORT_ATA ;
 scalar_t__ XPORT_SATA ;
 scalar_t__ XPORT_SPI ;
 int XPT_SET_TRAN_SETTINGS ;
 int arglist ;
 scalar_t__ ata_speed2revision (double) ;
 int ata_string2mode (int ) ;
 double atof (int ) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int cpi_print (struct ccb_pathinq*) ;
 int fprintf (int ,char*,...) ;
 int get_cpi (struct cam_device*,struct ccb_pathinq*) ;
 int get_print_cts (struct cam_device*,int,int,TYPE_4__*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int scsi_calc_syncparam (int) ;
 int stderr ;
 int stdout ;
 int strncasecmp (int ,char*,int) ;
 int strtol (int ,int *,int ) ;
 int testunitready (struct cam_device*,int,int,int,int) ;
 int warn (char*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
ratecontrol(struct cam_device *device, int task_attr, int retry_count,
     int timeout, int argc, char **argv, char *combinedopt)
{
 int c;
 union ccb *ccb;
 int user_settings = 0;
 int retval = 0;
 int disc_enable = -1, tag_enable = -1;
 int mode = -1;
 int offset = -1;
 double syncrate = -1;
 int bus_width = -1;
 int quiet = 0;
 int change_settings = 0, send_tur = 0;
 struct ccb_pathinq cpi;

 ccb = cam_getccb(device);
 if (ccb == ((void*)0)) {
  warnx("ratecontrol: error allocating ccb");
  return (1);
 }
 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch(c){
  case 'a':
   send_tur = 1;
   break;
  case 'c':
   user_settings = 0;
   break;
  case 'D':
   if (strncasecmp(optarg, "enable", 6) == 0)
    disc_enable = 1;
   else if (strncasecmp(optarg, "disable", 7) == 0)
    disc_enable = 0;
   else {
    warnx("-D argument \"%s\" is unknown", optarg);
    retval = 1;
    goto ratecontrol_bailout;
   }
   change_settings = 1;
   break;
  case 'M':
   mode = ata_string2mode(optarg);
   if (mode < 0) {
    warnx("unknown mode '%s'", optarg);
    retval = 1;
    goto ratecontrol_bailout;
   }
   change_settings = 1;
   break;
  case 'O':
   offset = strtol(optarg, ((void*)0), 0);
   if (offset < 0) {
    warnx("offset value %d is < 0", offset);
    retval = 1;
    goto ratecontrol_bailout;
   }
   change_settings = 1;
   break;
  case 'q':
   quiet++;
   break;
  case 'R':
   syncrate = atof(optarg);
   if (syncrate < 0) {
    warnx("sync rate %f is < 0", syncrate);
    retval = 1;
    goto ratecontrol_bailout;
   }
   change_settings = 1;
   break;
  case 'T':
   if (strncasecmp(optarg, "enable", 6) == 0)
    tag_enable = 1;
   else if (strncasecmp(optarg, "disable", 7) == 0)
    tag_enable = 0;
   else {
    warnx("-T argument \"%s\" is unknown", optarg);
    retval = 1;
    goto ratecontrol_bailout;
   }
   change_settings = 1;
   break;
  case 'U':
   user_settings = 1;
   break;
  case 'W':
   bus_width = strtol(optarg, ((void*)0), 0);
   if (bus_width < 0) {
    warnx("bus width %d is < 0", bus_width);
    retval = 1;
    goto ratecontrol_bailout;
   }
   change_settings = 1;
   break;
  default:
   break;
  }
 }





 if ((retval = get_cpi(device, &cpi)) != 0)
  goto ratecontrol_bailout;
 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->cts);
 if (quiet == 0) {
  fprintf(stdout, "%s parameters:\n",
      user_settings ? "User" : "Current");
 }
 retval = get_print_cts(device, user_settings, quiet, &ccb->cts);
 if (retval != 0)
  goto ratecontrol_bailout;

 if (arglist & CAM_ARG_VERBOSE)
  cpi_print(&cpi);

 if (change_settings) {
  int didsettings = 0;
  struct ccb_trans_settings_spi *spi = ((void*)0);
  struct ccb_trans_settings_pata *pata = ((void*)0);
  struct ccb_trans_settings_sata *sata = ((void*)0);
  struct ccb_trans_settings_ata *ata = ((void*)0);
  struct ccb_trans_settings_scsi *scsi = ((void*)0);

  if (ccb->cts.transport == XPORT_SPI)
   spi = &ccb->cts.xport_specific.spi;
  if (ccb->cts.transport == XPORT_ATA)
   pata = &ccb->cts.xport_specific.ata;
  if (ccb->cts.transport == XPORT_SATA)
   sata = &ccb->cts.xport_specific.sata;
  if (ccb->cts.protocol == PROTO_ATA)
   ata = &ccb->cts.proto_specific.ata;
  if (ccb->cts.protocol == PROTO_SCSI)
   scsi = &ccb->cts.proto_specific.scsi;
  ccb->cts.xport_specific.valid = 0;
  ccb->cts.proto_specific.valid = 0;
  if (spi && disc_enable != -1) {
   spi->valid |= CTS_SPI_VALID_DISC;
   if (disc_enable == 0)
    spi->flags &= ~CTS_SPI_FLAGS_DISC_ENB;
   else
    spi->flags |= CTS_SPI_FLAGS_DISC_ENB;
   didsettings++;
  }
  if (tag_enable != -1) {
   if ((cpi.hba_inquiry & PI_TAG_ABLE) == 0) {
    warnx("HBA does not support tagged queueing, "
          "so you cannot modify tag settings");
    retval = 1;
    goto ratecontrol_bailout;
   }
   if (ata) {
    ata->valid |= CTS_SCSI_VALID_TQ;
    if (tag_enable == 0)
     ata->flags &= ~CTS_ATA_FLAGS_TAG_ENB;
    else
     ata->flags |= CTS_ATA_FLAGS_TAG_ENB;
    didsettings++;
   } else if (scsi) {
    scsi->valid |= CTS_SCSI_VALID_TQ;
    if (tag_enable == 0)
     scsi->flags &= ~CTS_SCSI_FLAGS_TAG_ENB;
    else
     scsi->flags |= CTS_SCSI_FLAGS_TAG_ENB;
    didsettings++;
   }
  }
  if (spi && offset != -1) {
   if ((cpi.hba_inquiry & PI_SDTR_ABLE) == 0) {
    warnx("HBA is not capable of changing offset");
    retval = 1;
    goto ratecontrol_bailout;
   }
   spi->valid |= CTS_SPI_VALID_SYNC_OFFSET;
   spi->sync_offset = offset;
   didsettings++;
  }
  if (spi && syncrate != -1) {
   int prelim_sync_period;

   if ((cpi.hba_inquiry & PI_SDTR_ABLE) == 0) {
    warnx("HBA is not capable of changing "
          "transfer rates");
    retval = 1;
    goto ratecontrol_bailout;
   }
   spi->valid |= CTS_SPI_VALID_SYNC_RATE;





   syncrate *= 1000;




   if (syncrate == 0)
    prelim_sync_period = 0;
   else
    prelim_sync_period = 10000000 / syncrate;
   spi->sync_period =
    scsi_calc_syncparam(prelim_sync_period);
   didsettings++;
  }
  if (sata && syncrate != -1) {
   if ((cpi.hba_inquiry & PI_SDTR_ABLE) == 0) {
    warnx("HBA is not capable of changing "
          "transfer rates");
    retval = 1;
    goto ratecontrol_bailout;
   }
   if (!user_settings) {
    warnx("You can modify only user rate "
        "settings for SATA");
    retval = 1;
    goto ratecontrol_bailout;
   }
   sata->revision = ata_speed2revision(syncrate * 100);
   if (sata->revision < 0) {
    warnx("Invalid rate %f", syncrate);
    retval = 1;
    goto ratecontrol_bailout;
   }
   sata->valid |= CTS_SATA_VALID_REVISION;
   didsettings++;
  }
  if ((pata || sata) && mode != -1) {
   if ((cpi.hba_inquiry & PI_SDTR_ABLE) == 0) {
    warnx("HBA is not capable of changing "
          "transfer rates");
    retval = 1;
    goto ratecontrol_bailout;
   }
   if (!user_settings) {
    warnx("You can modify only user mode "
        "settings for ATA/SATA");
    retval = 1;
    goto ratecontrol_bailout;
   }
   if (pata) {
    pata->mode = mode;
    pata->valid |= CTS_ATA_VALID_MODE;
   } else {
    sata->mode = mode;
    sata->valid |= CTS_SATA_VALID_MODE;
   }
   didsettings++;
  }
  if (spi && bus_width != -1) {






   if ((bus_width == 16)
    && ((cpi.hba_inquiry & PI_WIDE_16) == 0)) {
    warnx("HBA does not support 16 bit bus width");
    retval = 1;
    goto ratecontrol_bailout;
   } else if ((bus_width == 32)
    && ((cpi.hba_inquiry & PI_WIDE_32) == 0)) {
    warnx("HBA does not support 32 bit bus width");
    retval = 1;
    goto ratecontrol_bailout;
   } else if ((bus_width != 8)
    && (bus_width != 16)
    && (bus_width != 32)) {
    warnx("Invalid bus width %d", bus_width);
    retval = 1;
    goto ratecontrol_bailout;
   }
   spi->valid |= CTS_SPI_VALID_BUS_WIDTH;
   spi->bus_width = bus_width >> 4;
   didsettings++;
  }
  if (didsettings == 0) {
   goto ratecontrol_bailout;
  }
  ccb->ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
  if (cam_send_ccb(device, ccb) < 0) {
   warn("error sending XPT_SET_TRAN_SETTINGS CCB");
   retval = 1;
   goto ratecontrol_bailout;
  }
  if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
   warnx("XPT_SET_TRANS_SETTINGS CCB failed");
   if (arglist & CAM_ARG_VERBOSE) {
    cam_error_print(device, ccb, CAM_ESF_ALL,
      CAM_EPF_ALL, stderr);
   }
   retval = 1;
   goto ratecontrol_bailout;
  }
 }
 if (send_tur) {
  retval = testunitready(device, task_attr, retry_count, timeout,
           (arglist & CAM_ARG_VERBOSE) ? 0 : 1);



  if (retval != 0) {
   if (quiet == 0)
    fprintf(stderr, "Test Unit Ready failed\n");
   goto ratecontrol_bailout;
  }
 }
 if ((change_settings || send_tur) && !quiet &&
     (ccb->cts.transport == XPORT_ATA ||
      ccb->cts.transport == XPORT_SATA || send_tur)) {
  fprintf(stdout, "New parameters:\n");
  retval = get_print_cts(device, user_settings, 0, ((void*)0));
 }

ratecontrol_bailout:
 cam_freeccb(ccb);
 return (retval);
}
