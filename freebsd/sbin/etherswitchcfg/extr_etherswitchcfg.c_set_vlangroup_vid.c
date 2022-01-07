
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vg ;
struct cfg {int fd; int unit; } ;
struct TYPE_4__ {int es_vid; int es_vlangroup; } ;
typedef TYPE_1__ etherswitch_vlangroup_t ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IEEE802DOT1Q_VID_MAX ;
 int IOETHERSWITCHGETVLANGROUP ;
 int IOETHERSWITCHSETVLANGROUP ;
 int err (int ,char*) ;
 int errx (int ,char*,int) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int
set_vlangroup_vid(struct cfg *cfg, int argc, char *argv[])
{
 int v;
 etherswitch_vlangroup_t vg;

 if (argc < 2)
  return (-1);

 memset(&vg, 0, sizeof(vg));
 v = strtol(argv[1], ((void*)0), 0);
 if (v < 0 || v > IEEE802DOT1Q_VID_MAX)
  errx(EX_USAGE, "vlan must be between 0 and %d", IEEE802DOT1Q_VID_MAX);
 vg.es_vlangroup = cfg->unit;
 if (ioctl(cfg->fd, IOETHERSWITCHGETVLANGROUP, &vg) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETVLANGROUP)");
 vg.es_vid = v;
 if (ioctl(cfg->fd, IOETHERSWITCHSETVLANGROUP, &vg) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETVLANGROUP)");
 return (0);
}
