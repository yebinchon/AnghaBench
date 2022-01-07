
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int opc; void* cdw12; void* cdw11; void* cdw10; } ;
struct nvme_pt_command {size_t len; int is_read; int cpl; int * buf; TYPE_1__ cmd; } ;
typedef int pt ;


 int NVME_PASSTHROUGH_CMD ;
 int err (int,char*) ;
 int errx (int,char*) ;
 void* htole32 (int) ;
 scalar_t__ ioctl (int,int ,struct nvme_pt_command*) ;
 int memset (struct nvme_pt_command*,int ,int) ;
 scalar_t__ nvme_completion_is_error (int *) ;

__attribute__((used)) static void
wdc_get_data(int fd, uint32_t opcode, uint32_t len, uint32_t off, uint32_t cmd,
    uint8_t *buffer, size_t buflen)
{
 struct nvme_pt_command pt;

 memset(&pt, 0, sizeof(pt));
 pt.cmd.opc = opcode;
 pt.cmd.cdw10 = htole32(len / sizeof(uint32_t));
 pt.cmd.cdw11 = htole32(off / sizeof(uint32_t));
 pt.cmd.cdw12 = htole32(cmd);
 pt.buf = buffer;
 pt.len = buflen;
 pt.is_read = 1;



 if (ioctl(fd, NVME_PASSTHROUGH_CMD, &pt) < 0)
  err(1, "wdc_get_data request failed");
 if (nvme_completion_is_error(&pt.cpl))
  errx(1, "wdc_get_data request returned error");
}
