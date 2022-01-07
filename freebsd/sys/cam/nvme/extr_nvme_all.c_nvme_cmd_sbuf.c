
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct nvme_command {int cdw15; int cdw14; int cdw13; int cdw12; int cdw11; int cdw10; scalar_t__ prp2; scalar_t__ prp1; int nsid; int fuse; int opc; } ;


 int sbuf_printf (struct sbuf*,char*,int ,int ,int ,unsigned long long,unsigned long long,int ,int ,int ,int ,int ,int ) ;

void
nvme_cmd_sbuf(const struct nvme_command *cmd, struct sbuf *sb)
{





 sbuf_printf(sb,
     "opc=%x fuse=%x nsid=%x prp1=%llx prp2=%llx cdw=%x %x %x %x %x %x",
     cmd->opc, cmd->fuse, cmd->nsid,
     (unsigned long long)cmd->prp1, (unsigned long long)cmd->prp2,
     cmd->cdw10, cmd->cdw11, cmd->cdw12,
     cmd->cdw13, cmd->cdw14, cmd->cdw15);
}
