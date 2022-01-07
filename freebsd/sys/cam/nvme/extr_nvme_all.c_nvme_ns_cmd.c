
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct nvme_command {int dummy; } ;
struct TYPE_2__ {void* cdw15; void* cdw14; void* cdw13; void* cdw12; void* cdw11; void* cdw10; void* nsid; int opc; } ;
struct ccb_nvmeio {TYPE_1__ cmd; } ;


 int bzero (TYPE_1__*,int) ;
 void* htole32 (int ) ;

void
nvme_ns_cmd(struct ccb_nvmeio *nvmeio, uint8_t cmd, uint32_t nsid,
    uint32_t cdw10, uint32_t cdw11, uint32_t cdw12, uint32_t cdw13,
    uint32_t cdw14, uint32_t cdw15)
{
 bzero(&nvmeio->cmd, sizeof(struct nvme_command));
 nvmeio->cmd.opc = cmd;
 nvmeio->cmd.nsid = htole32(nsid);
 nvmeio->cmd.cdw10 = htole32(cdw10);
 nvmeio->cmd.cdw11 = htole32(cdw11);
 nvmeio->cmd.cdw12 = htole32(cdw12);
 nvmeio->cmd.cdw13 = htole32(cdw13);
 nvmeio->cmd.cdw14 = htole32(cdw14);
 nvmeio->cmd.cdw15 = htole32(cdw15);
}
