
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {int cdw10; int opc; } ;
struct nvme_pt_command {TYPE_2__ cpl; scalar_t__ is_read; TYPE_1__ cmd; } ;
typedef int pt ;


 int NVME_OPC_FIRMWARE_ACTIVATE ;
 int NVME_PASSTHROUGH_CMD ;
 scalar_t__ NVME_SCT_COMMAND_SPECIFIC ;
 scalar_t__ NVME_SC_FIRMWARE_REQUIRES_RESET ;
 scalar_t__ NVME_STATUS_GET_SC (int ) ;
 scalar_t__ NVME_STATUS_GET_SCT (int ) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (TYPE_2__*) ;

__attribute__((used)) static int
activate_firmware(int fd, int slot, int activate_action)
{
 struct nvme_pt_command pt;
 uint16_t sct, sc;

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = NVME_OPC_FIRMWARE_ACTIVATE;
 pt.cmd.cdw10 = htole32((activate_action << 3) | slot);
 pt.is_read = 0;

 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "firmware activate request failed");

 sct = NVME_STATUS_GET_SCT(pt.cpl.status);
 sc = NVME_STATUS_GET_SC(pt.cpl.status);

 if (sct == NVME_SCT_COMMAND_SPECIFIC &&
     sc == NVME_SC_FIRMWARE_REQUIRES_RESET)
  return 1;

 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "firmware activate request returned error");

 return 0;
}
