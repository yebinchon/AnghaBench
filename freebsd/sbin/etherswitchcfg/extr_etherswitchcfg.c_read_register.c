
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etherswitch_reg {int reg; int val; } ;
struct cfg {int fd; } ;


 int EX_OSERR ;
 int IOETHERSWITCHGETREG ;
 int err (int ,char*) ;
 scalar_t__ ioctl (int ,int ,struct etherswitch_reg*) ;

__attribute__((used)) static int
read_register(struct cfg *cfg, int r)
{
 struct etherswitch_reg er;

 er.reg = r;
 if (ioctl(cfg->fd, IOETHERSWITCHGETREG, &er) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETREG)");
 return (er.val);
}
