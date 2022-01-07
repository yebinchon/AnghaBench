
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct nvme_sanitize_status_page {int sstat; int sprog; } ;
struct TYPE_3__ {void* cdw11; void* cdw10; int opc; } ;
struct nvme_pt_command {int cpl; TYPE_1__ cmd; } ;
struct nvme_controller_data {int sanicap; int nn; } ;
struct cmd {int dummy; } ;
typedef int ss ;
typedef int pt ;
struct TYPE_4__ {int owpass; char* dev; int ndas; int oipbp; int ause; int ovrpat; scalar_t__ reportonly; int * sanact; } ;


 int NVME_CTRLR_DATA_SANICAP_BES_MASK ;
 int NVME_CTRLR_DATA_SANICAP_BES_SHIFT ;
 int NVME_CTRLR_DATA_SANICAP_CES_MASK ;
 int NVME_CTRLR_DATA_SANICAP_CES_SHIFT ;
 int NVME_CTRLR_DATA_SANICAP_OWS_MASK ;
 int NVME_CTRLR_DATA_SANICAP_OWS_SHIFT ;
 int NVME_GLOBAL_NAMESPACE_TAG ;
 int NVME_LOG_SANITIZE_STATUS ;
 int NVME_OPC_SANITIZE ;
 int NVME_PASSTHROUGH_CMD ;




 int NVME_SS_PAGE_SSTAT_STATUS_MASK ;

 int NVME_SS_PAGE_SSTAT_STATUS_SHIFT ;
 int arg_help (int,char**,struct cmd const*) ;
 scalar_t__ arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int get_nsid (int,char**,scalar_t__*) ;
 void* htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int open_dev (char*,int*,int,int) ;
 TYPE_2__ opt ;
 int printf (char*,...) ;
 int read_controller_data (int,struct nvme_controller_data*) ;
 int read_logpage (int,int ,int ,int ,int ,int ,struct nvme_sanitize_status_page*,int) ;
 int sleep (int) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static void
sanitize(const struct cmd *f, int argc, char *argv[])
{
 struct nvme_controller_data cd;
 struct nvme_pt_command pt;
 struct nvme_sanitize_status_page ss;
 char *path;
 uint32_t nsid;
 int sanact = 0, fd, delay = 1;

 if (arg_parse(argc, argv, f))
  return;

 if (opt.sanact == ((void*)0)) {
  if (!opt.reportonly) {
   fprintf(stderr, "Sanitize Action is not specified\n");
   arg_help(argc, argv, f);
  }
 } else {
  if (strcmp(opt.sanact, "exitfailure") == 0)
   sanact = 1;
  else if (strcmp(opt.sanact, "block") == 0)
   sanact = 2;
  else if (strcmp(opt.sanact, "overwrite") == 0)
   sanact = 3;
  else if (strcmp(opt.sanact, "crypto") == 0)
   sanact = 4;
  else {
   fprintf(stderr, "Incorrect Sanitize Action value\n");
   arg_help(argc, argv, f);
  }
 }
 if (opt.owpass == 0 || opt.owpass > 16) {
  fprintf(stderr, "Incorrect Overwrite Pass Count value\n");
  arg_help(argc, argv, f);
 }

 open_dev(opt.dev, &fd, 1, 1);
 get_nsid(fd, &path, &nsid);
 if (nsid != 0) {
  close(fd);
  open_dev(path, &fd, 1, 1);
 }
 free(path);

 if (opt.reportonly)
  goto wait;


 read_controller_data(fd, &cd);
 if (((cd.sanicap >> NVME_CTRLR_DATA_SANICAP_BES_SHIFT) &
      NVME_CTRLR_DATA_SANICAP_BES_MASK) == 0 && sanact == 2)
  errx(1, "controller does not support Block Erase");
 if (((cd.sanicap >> NVME_CTRLR_DATA_SANICAP_OWS_SHIFT) &
      NVME_CTRLR_DATA_SANICAP_OWS_MASK) == 0 && sanact == 3)
  errx(1, "controller does not support Overwrite");
 if (((cd.sanicap >> NVME_CTRLR_DATA_SANICAP_CES_SHIFT) &
      NVME_CTRLR_DATA_SANICAP_CES_MASK) == 0 && sanact == 4)
  errx(1, "controller does not support Crypto Erase");





 if (nsid != 0 && cd.nn > 1)
  errx(1, "can't sanitize one of namespaces, specify controller");

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_SANITIZE;
 pt.cmd.cdw10 = htole32((opt.ndas << 9) | (opt.oipbp << 8) |
     ((opt.owpass & 0xf) << 4) | (opt.ause << 3) | sanact);
 pt.cmd.cdw11 = htole32(opt.ovrpat);

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "sanitize request failed");

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "sanitize request returned error");

wait:
 read_logpage(fd, NVME_LOG_SANITIZE_STATUS,
     NVME_GLOBAL_NAMESPACE_TAG, 0, 0, 0, &ss, sizeof(ss));
 switch ((ss.sstat >> NVME_SS_PAGE_SSTAT_STATUS_SHIFT) &
     NVME_SS_PAGE_SSTAT_STATUS_MASK) {
 case 128:
  printf("Never sanitized");
  break;
 case 132:
  printf("Sanitize completed");
  break;
 case 129:
  printf("Sanitize in progress: %u%% (%u/65535)\r",
      (ss.sprog * 100 + 32768) / 65536, ss.sprog);
  fflush(stdout);
  if (delay < 16)
   delay++;
  sleep(delay);
  goto wait;
 case 130:
  printf("Sanitize failed");
  break;
 case 131:
  printf("Sanitize completed with deallocation");
  break;
 default:
  printf("Sanitize status unknown");
  break;
 }
 if (delay > 1)
  printf("                       ");
 printf("\n");

 close(fd);
 exit(0);
}
