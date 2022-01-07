
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {void* cdw10; void* nsid; int opc; } ;
struct nvme_pt_command {scalar_t__* buf; int len; int is_read; int cpl; TYPE_1__ cmd; } ;
struct cmd {int dummy; } ;
typedef int pt ;
typedef int list ;
struct TYPE_4__ {int dev; } ;


 int NVME_OPC_IDENTIFY ;
 int NVME_PASSTHROUGH_CMD ;
 TYPE_2__ active_opt ;
 scalar_t__ arg_parse (int,char**,struct cmd const*) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 void* htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int le32toh (scalar_t__) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int open_dev (int ,int*,int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
nsactive(const struct cmd *f, int argc, char *argv[])
{
 struct nvme_pt_command pt;
 int fd, i;
 uint32_t list[1024];

 if (arg_parse(argc, argv, f))
  return;
 open_dev(active_opt.dev, &fd, 1, 1);

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_IDENTIFY;
 pt.cmd.nsid = htole32(0);
 pt.cmd.cdw10 = htole32(0x02);
 pt.buf = list;
 pt.len = sizeof(list);
 pt.is_read = 1;
 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "identify request failed");
 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "identify request returned error");

 printf("Active namespaces:\n");
 for (i = 0; list[i] != 0; i++)
  printf("%10d\n", le32toh(list[i]));

 exit(0);
}
