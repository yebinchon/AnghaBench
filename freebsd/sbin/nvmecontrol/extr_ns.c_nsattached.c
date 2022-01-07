
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {void* cdw10; void* nsid; int opc; } ;
struct nvme_pt_command {int len; int is_read; int cpl; int * buf; TYPE_1__ cmd; } ;
struct nvme_controller_data {int oacs; } ;
struct cmd {int dummy; } ;
typedef int pt ;
typedef int clist ;
struct TYPE_4__ {scalar_t__ nsid; int dev; } ;


 scalar_t__ NONE ;
 int NVME_CTRLR_DATA_OACS_NSMGMT_MASK ;
 int NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT ;
 int NVME_OPC_IDENTIFY ;
 int NVME_PASSTHROUGH_CMD ;
 int arg_help (int,char**,struct cmd const*) ;
 scalar_t__ arg_parse (int,char**,struct cmd const*) ;
 TYPE_2__ attached_opt ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 void* htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int le16toh (int ) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int open_dev (int ,int*,int,int) ;
 int printf (char*,int) ;
 int read_controller_data (int,struct nvme_controller_data*) ;
 int stderr ;

__attribute__((used)) static void
nsattached(const struct cmd *f, int argc, char *argv[])
{
 struct nvme_pt_command pt;
 struct nvme_controller_data cd;
 int fd, i, n;
 uint16_t clist[2048];

 if (arg_parse(argc, argv, f))
  return;
 if (attached_opt.nsid == NONE) {
  fprintf(stderr, "No valid NSID specified\n");
  arg_help(argc, argv, f);
 }
 open_dev(attached_opt.dev, &fd, 1, 1);
 read_controller_data(fd, &cd);


 if (((cd.oacs >> NVME_CTRLR_DATA_OACS_NSMGMT_SHIFT) &
     NVME_CTRLR_DATA_OACS_NSMGMT_MASK) == 0)
  errx(1, "controller does not support namespace management");

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_IDENTIFY;
 pt.cmd.nsid = htole32(attached_opt.nsid);
 pt.cmd.cdw10 = htole32(0x12);
 pt.buf = clist;
 pt.len = sizeof(clist);
 pt.is_read = 1;
 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "identify request failed");
 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "identify request returned error");

 n = le16toh(clist[0]);
 printf("Attached %d controller(s):\n", n);
 for (i = 0; i < n; i++)
  printf("  0x%04x\n", le16toh(clist[i + 1]));

 exit(0);
}
