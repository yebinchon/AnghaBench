
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherswitch_phyreg {int phy; int reg; int val; } ;
struct cfg {int fd; } ;


 int EX_OSERR ;
 int IOETHERSWITCHSETPHYREG ;
 int err (int ,char*) ;
 scalar_t__ ioctl (int ,int ,struct etherswitch_phyreg*) ;

__attribute__((used)) static void
write_phyregister(struct cfg *cfg, int phy, int reg, int val)
{
 struct etherswitch_phyreg er;

 er.phy = phy;
 er.reg = reg;
 er.val = val;
 if (ioctl(cfg->fd, IOETHERSWITCHSETPHYREG, &er) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETPHYREG)");
}
