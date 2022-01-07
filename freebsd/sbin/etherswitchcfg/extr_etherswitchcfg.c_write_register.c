
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherswitch_reg {int reg; int val; } ;
struct cfg {int fd; } ;


 int EX_OSERR ;
 int IOETHERSWITCHSETREG ;
 int err (int ,char*) ;
 scalar_t__ ioctl (int ,int ,struct etherswitch_reg*) ;

__attribute__((used)) static void
write_register(struct cfg *cfg, int r, int v)
{
 struct etherswitch_reg er;

 er.reg = r;
 er.val = v;
 if (ioctl(cfg->fd, IOETHERSWITCHSETREG, &er) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETREG)");
}
