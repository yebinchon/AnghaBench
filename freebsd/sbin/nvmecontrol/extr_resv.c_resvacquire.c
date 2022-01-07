
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int cdw10; int opc; } ;
struct nvme_pt_command {int len; int cpl; scalar_t__ is_read; int ** buf; TYPE_1__ cmd; } ;
struct cmd {int dummy; } ;
typedef int pt ;
typedef int data ;
struct TYPE_4__ {int racqa; int rtype; int prkey; int crkey; int dev; } ;


 int NVME_OPC_RESERVATION_ACQUIRE ;
 int NVME_PASSTHROUGH_CMD ;
 TYPE_2__ acquire_opt ;
 int arg_help (int,char**,struct cmd const*) ;
 scalar_t__ arg_parse (int,char**,struct cmd const*) ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int get_nsid (int,int *,scalar_t__*) ;
 int htole32 (int) ;
 int htole64 (int ) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int open_dev (int ,int*,int,int) ;
 int stderr ;

__attribute__((used)) static void
resvacquire(const struct cmd *f, int argc, char *argv[])
{
 struct nvme_pt_command pt;
 uint64_t data[2];
 int fd;
 uint32_t nsid;

 if (arg_parse(argc, argv, f))
  return;
 open_dev(acquire_opt.dev, &fd, 1, 1);
 get_nsid(fd, ((void*)0), &nsid);
 if (nsid == 0) {
  fprintf(stderr, "This command require namespace-id\n");
  arg_help(argc, argv, f);
 }

 data[0] = htole64(acquire_opt.crkey);
 data[1] = htole64(acquire_opt.prkey);

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_RESERVATION_ACQUIRE;
 pt.cmd.cdw10 = htole32((acquire_opt.racqa & 7) |
     (acquire_opt.rtype << 8));
 pt.buf = &data;
 pt.len = sizeof(data);
 pt.is_read = 0;

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "acquire request failed");

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "acquire request returned error");

 close(fd);
 exit(0);
}
