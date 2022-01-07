
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cdw10; int opc; } ;
struct nvme_pt_command {int len; int is_read; int cpl; struct nvme_controller_data* buf; TYPE_1__ cmd; } ;
struct nvme_controller_data {int dummy; } ;
typedef int pt ;


 int NVME_OPC_IDENTIFY ;
 int NVME_PASSTHROUGH_CMD ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int nvme_controller_data_swapbytes (struct nvme_controller_data*) ;

void
read_controller_data(int fd, struct nvme_controller_data *cdata)
{
 struct nvme_pt_command pt;

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_IDENTIFY;
 pt.cmd.cdw10 = htole32(1);
 pt.buf = cdata;
 pt.len = sizeof(*cdata);
 pt.is_read = 1;

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "identify request failed");


 nvme_controller_data_swapbytes(cdata);

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "identify request returned error");
}
