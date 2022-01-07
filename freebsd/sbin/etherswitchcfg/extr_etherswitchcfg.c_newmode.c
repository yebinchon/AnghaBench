
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg {int mode; int unit; int conf; int fd; } ;
typedef enum cmdmode { ____Placeholder_cmdmode } cmdmode ;


 int EX_OSERR ;
 int IOETHERSWITCHGETCONF ;







 int err (int ,char*) ;
 int ioctl (int ,int ,int *) ;
 int print_config (struct cfg*) ;
 int print_port (struct cfg*,int ) ;
 int print_vlangroup (struct cfg*,int ) ;

__attribute__((used)) static void
newmode(struct cfg *cfg, enum cmdmode mode)
{
 if (mode == cfg->mode)
  return;
 switch (cfg->mode) {
 case 132:
  break;
 case 133:




  if (ioctl(cfg->fd, IOETHERSWITCHGETCONF, &cfg->conf) != 0)
   err(EX_OSERR, "ioctl(IOETHERSWITCHGETCONF)");
  print_config(cfg);
  break;
 case 130:
  print_port(cfg, cfg->unit);
  break;
 case 128:
  print_vlangroup(cfg, cfg->unit);
  break;
 case 129:
 case 131:
 case 134:
  break;
 }
 cfg->mode = mode;
}
