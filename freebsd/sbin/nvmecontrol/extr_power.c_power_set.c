
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {void* cdw11; void* cdw10; int opc; } ;
struct nvme_pt_command {int cpl; TYPE_1__ cmd; } ;
typedef int pt ;


 int NVME_FEAT_POWER_MANAGEMENT ;
 int NVME_OPC_SET_FEATURES ;
 int NVME_PASSTHROUGH_CMD ;
 int err (int,char*) ;
 int errx (int,char*) ;
 void* htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;

__attribute__((used)) static void
power_set(int fd, int power_val, int workload, int perm)
{
 struct nvme_pt_command pt;
 uint32_t p;

 p = perm ? (1u << 31) : 0;
 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_SET_FEATURES;
 pt.cmd.cdw10 = htole32(NVME_FEAT_POWER_MANAGEMENT | p);
 pt.cmd.cdw11 = htole32(power_val | (workload << 5));

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "set feature power mgmt request failed");

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "set feature power mgmt request returned error");
}
