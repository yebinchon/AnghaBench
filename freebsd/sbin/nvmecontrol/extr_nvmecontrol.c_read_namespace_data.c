
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {void* cdw10; void* nsid; int opc; } ;
struct nvme_pt_command {int len; int is_read; int cpl; struct nvme_namespace_data* buf; TYPE_1__ cmd; } ;
struct nvme_namespace_data {int dummy; } ;
typedef int pt ;


 int NVME_OPC_IDENTIFY ;
 int NVME_PASSTHROUGH_CMD ;
 int err (int,char*) ;
 int errx (int,char*) ;
 void* htole32 (int ) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int nvme_namespace_data_swapbytes (struct nvme_namespace_data*) ;

void
read_namespace_data(int fd, uint32_t nsid, struct nvme_namespace_data *nsdata)
{
 struct nvme_pt_command pt;

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_IDENTIFY;
 pt.cmd.nsid = htole32(nsid);
 pt.cmd.cdw10 = htole32(0);
 pt.buf = nsdata;
 pt.len = sizeof(*nsdata);
 pt.is_read = 1;

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "identify request failed");


 nvme_namespace_data_swapbytes(nsdata);

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "identify request returned error");
}
