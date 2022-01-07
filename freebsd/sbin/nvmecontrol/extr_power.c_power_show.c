
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cdw0; } ;
struct TYPE_3__ {int cdw10; int opc; } ;
struct nvme_pt_command {TYPE_2__ cpl; TYPE_1__ cmd; } ;
typedef int pt ;


 int NVME_FEAT_POWER_MANAGEMENT ;
 int NVME_OPC_GET_FEATURES ;
 int NVME_PASSTHROUGH_CMD ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int htole32 (int ) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (TYPE_2__*) ;
 int printf (char*,int) ;

__attribute__((used)) static void
power_show(int fd)
{
 struct nvme_pt_command pt;

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_GET_FEATURES;
 pt.cmd.cdw10 = htole32(NVME_FEAT_POWER_MANAGEMENT);

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "set feature power mgmt request failed");

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "set feature power mgmt request returned error");

 printf("Current Power Mode is %d\n", pt.cpl.cdw0);
}
