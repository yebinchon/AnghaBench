
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int match_buf_len; unsigned int num_matches; scalar_t__ status; struct dev_match_result* matches; scalar_t__ pattern_buf_len; scalar_t__ num_patterns; } ;
struct TYPE_4__ {scalar_t__ status; int func_code; int target_lun; int target_id; int path_id; } ;
union ccb {TYPE_3__ cdm; TYPE_1__ ccb_h; } ;
typedef int uintmax_t ;
struct periph_match_result {char* periph_name; int unit_number; } ;
struct device_match_result {int flags; int path_id; int target_id; int target_lun; int protocol; } ;
struct bus_match_result {int path_id; char* dev_name; int unit_number; int bus_id; } ;
struct TYPE_5__ {struct periph_match_result periph_result; struct device_match_result device_result; struct bus_match_result bus_result; } ;
struct dev_match_result {int type; TYPE_2__ result; } ;


 int CAMIOCOMMAND ;
 int CAM_ARG_VERBOSE ;
 scalar_t__ CAM_DEV_MATCH_LAST ;
 scalar_t__ CAM_DEV_MATCH_MORE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int CAM_XPT_PATH_ID ;



 int DEV_RESULT_UNCONFIGURED ;
 int O_RDWR ;
 int PROTO_ATA ;
 int PROTO_MMCSD ;
 int PROTO_NVME ;
 int PROTO_SATAPM ;
 int PROTO_SCSI ;
 int PROTO_SEMB ;
 int XPT_DEVICE ;
 int XPT_DEV_MATCH ;
 int arglist ;
 int bzero (union ccb*,int) ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int ioctl (int,int ,union ccb*) ;
 scalar_t__ malloc (int) ;
 int open (int ,int ) ;
 int print_dev_ata (struct device_match_result*,char*) ;
 int print_dev_mmcsd (struct device_match_result*,char*) ;
 int print_dev_nvme (struct device_match_result*,char*) ;
 int print_dev_scsi (struct device_match_result*,char*) ;
 int print_dev_semb (struct device_match_result*,char*) ;
 int sprintf (char*,char*) ;
 int stdout ;
 int warn (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
getdevtree(int argc, char **argv, char *combinedopt)
{
 union ccb ccb;
 int bufsize, fd;
 unsigned int i;
 int need_close = 0;
 int error = 0;
 int skip_device = 0;
 int busonly = 0;
 int c;

 while ((c = getopt(argc, argv, combinedopt)) != -1) {
  switch(c) {
  case 'b':
   if ((arglist & CAM_ARG_VERBOSE) == 0)
    busonly = 1;
   break;
  default:
   break;
  }
 }

 if ((fd = open(XPT_DEVICE, O_RDWR)) == -1) {
  warn("couldn't open %s", XPT_DEVICE);
  return (1);
 }

 bzero(&ccb, sizeof(union ccb));

 ccb.ccb_h.path_id = CAM_XPT_PATH_ID;
 ccb.ccb_h.target_id = CAM_TARGET_WILDCARD;
 ccb.ccb_h.target_lun = CAM_LUN_WILDCARD;

 ccb.ccb_h.func_code = XPT_DEV_MATCH;
 bufsize = sizeof(struct dev_match_result) * 100;
 ccb.cdm.match_buf_len = bufsize;
 ccb.cdm.matches = (struct dev_match_result *)malloc(bufsize);
 if (ccb.cdm.matches == ((void*)0)) {
  warnx("can't malloc memory for matches");
  close(fd);
  return (1);
 }
 ccb.cdm.num_matches = 0;





 ccb.cdm.num_patterns = 0;
 ccb.cdm.pattern_buf_len = 0;





 do {
  if (ioctl(fd, CAMIOCOMMAND, &ccb) == -1) {
   warn("error sending CAMIOCOMMAND ioctl");
   error = 1;
   break;
  }

  if ((ccb.ccb_h.status != CAM_REQ_CMP)
   || ((ccb.cdm.status != CAM_DEV_MATCH_LAST)
      && (ccb.cdm.status != CAM_DEV_MATCH_MORE))) {
   warnx("got CAM error %#x, CDM error %d\n",
         ccb.ccb_h.status, ccb.cdm.status);
   error = 1;
   break;
  }

  for (i = 0; i < ccb.cdm.num_matches; i++) {
   switch (ccb.cdm.matches[i].type) {
   case 130: {
    struct bus_match_result *bus_result;





    if ((busonly == 0) &&
        (arglist & CAM_ARG_VERBOSE) == 0)
     break;

    bus_result =
     &ccb.cdm.matches[i].result.bus_result;

    if (need_close) {
     fprintf(stdout, ")\n");
     need_close = 0;
    }

    fprintf(stdout, "scbus%d on %s%d bus %d%s\n",
     bus_result->path_id,
     bus_result->dev_name,
     bus_result->unit_number,
     bus_result->bus_id,
     (busonly ? "" : ":"));
    break;
   }
   case 129: {
    struct device_match_result *dev_result;
    char tmpstr[256];

    if (busonly == 1)
     break;

    dev_result =
         &ccb.cdm.matches[i].result.device_result;

    if ((dev_result->flags
         & DEV_RESULT_UNCONFIGURED)
     && ((arglist & CAM_ARG_VERBOSE) == 0)) {
     skip_device = 1;
     break;
    } else
     skip_device = 0;

    if (dev_result->protocol == PROTO_SCSI) {
     if (print_dev_scsi(dev_result,
         &tmpstr[0]) != 0) {
      skip_device = 1;
      break;
     }
    } else if (dev_result->protocol == PROTO_ATA ||
        dev_result->protocol == PROTO_SATAPM) {
     if (print_dev_ata(dev_result,
         &tmpstr[0]) != 0) {
      skip_device = 1;
      break;
     }
    } else if (dev_result->protocol == PROTO_MMCSD){
     if (print_dev_mmcsd(dev_result,
         &tmpstr[0]) != 0) {
      skip_device = 1;
      break;
     }
    } else if (dev_result->protocol == PROTO_SEMB) {
     if (print_dev_semb(dev_result,
         &tmpstr[0]) != 0) {
      skip_device = 1;
      break;
     }
    } else {
        sprintf(tmpstr, "<>");
    }
    if (need_close) {
     fprintf(stdout, ")\n");
     need_close = 0;
    }

    fprintf(stdout, "%-33s  at scbus%d "
     "target %d lun %jx (",
     tmpstr,
     dev_result->path_id,
     dev_result->target_id,
     (uintmax_t)dev_result->target_lun);

    need_close = 1;

    break;
   }
   case 128: {
    struct periph_match_result *periph_result;

    periph_result =
          &ccb.cdm.matches[i].result.periph_result;

    if (busonly || skip_device != 0)
     break;

    if (need_close > 1)
     fprintf(stdout, ",");

    fprintf(stdout, "%s%d",
     periph_result->periph_name,
     periph_result->unit_number);

    need_close++;
    break;
   }
   default:
    fprintf(stdout, "unknown match type\n");
    break;
   }
  }

 } while ((ccb.ccb_h.status == CAM_REQ_CMP)
  && (ccb.cdm.status == CAM_DEV_MATCH_MORE));

 if (need_close)
  fprintf(stdout, ")\n");

 close(fd);

 return (error);
}
