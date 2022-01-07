
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cfg {int fd; int unit; } ;
typedef int p ;
struct TYPE_4__ {int es_pvid; int es_port; } ;
typedef TYPE_1__ etherswitch_port_t ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IEEE802DOT1Q_VID_MAX ;
 int IOETHERSWITCHGETPORT ;
 int IOETHERSWITCHSETPORT ;
 int bzero (TYPE_1__*,int) ;
 int err (int ,char*) ;
 int errx (int ,char*,int) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int
set_port_vid(struct cfg *cfg, int argc, char *argv[])
{
 int v;
 etherswitch_port_t p;

 if (argc < 2)
  return (-1);

 v = strtol(argv[1], ((void*)0), 0);
 if (v < 0 || v > IEEE802DOT1Q_VID_MAX)
  errx(EX_USAGE, "pvid must be between 0 and %d",
      IEEE802DOT1Q_VID_MAX);
 bzero(&p, sizeof(p));
 p.es_port = cfg->unit;
 if (ioctl(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
 p.es_pvid = v;
 if (ioctl(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");
 return (0);
}
