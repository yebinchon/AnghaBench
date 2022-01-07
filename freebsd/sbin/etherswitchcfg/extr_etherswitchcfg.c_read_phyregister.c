
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherswitch_phyreg {int phy; int reg; int val; } ;
struct cfg {int fd; } ;


 int EX_OSERR ;
 int IOETHERSWITCHGETPHYREG ;
 int err (int ,char*) ;
 scalar_t__ ioctl (int ,int ,struct etherswitch_phyreg*) ;

__attribute__((used)) static int
read_phyregister(struct cfg *cfg, int phy, int reg)
{
 struct etherswitch_phyreg er;

 er.phy = phy;
 er.reg = reg;
 if (ioctl(cfg->fd, IOETHERSWITCHGETPHYREG, &er) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETPHYREG)");
 return (er.val);
}
