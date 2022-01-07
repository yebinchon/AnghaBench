
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct cfg {int fd; int unit; } ;
typedef int p ;
struct TYPE_4__ {int es_flags; int es_port; } ;
typedef TYPE_1__ etherswitch_port_t ;


 int ETHERSWITCH_PORT_ADDTAG ;
 int ETHERSWITCH_PORT_DOUBLE_TAG ;
 int ETHERSWITCH_PORT_DROPTAGGED ;
 int ETHERSWITCH_PORT_DROPUNTAGGED ;
 int ETHERSWITCH_PORT_FIRSTLOCK ;
 int ETHERSWITCH_PORT_INGRESS ;
 int ETHERSWITCH_PORT_STRIPTAG ;
 int EX_OSERR ;
 int IOETHERSWITCHGETPORT ;
 int IOETHERSWITCHSETPORT ;
 int bzero (TYPE_1__*,int) ;
 int err (int ,char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
set_port_flag(struct cfg *cfg, int argc, char *argv[])
{
 char *flag;
 int n;
 uint32_t f;
 etherswitch_port_t p;

 if (argc < 1)
  return (-1);

 n = 0;
 f = 0;
 flag = argv[0];
 if (strcmp(flag, "none") != 0) {
  if (*flag == '-') {
   n++;
   flag++;
  }
  if (strcasecmp(flag, "striptag") == 0)
   f = ETHERSWITCH_PORT_STRIPTAG;
  else if (strcasecmp(flag, "addtag") == 0)
   f = ETHERSWITCH_PORT_ADDTAG;
  else if (strcasecmp(flag, "firstlock") == 0)
   f = ETHERSWITCH_PORT_FIRSTLOCK;
  else if (strcasecmp(flag, "droptagged") == 0)
   f = ETHERSWITCH_PORT_DROPTAGGED;
  else if (strcasecmp(flag, "dropuntagged") == 0)
   f = ETHERSWITCH_PORT_DROPUNTAGGED;
  else if (strcasecmp(flag, "doubletag") == 0)
   f = ETHERSWITCH_PORT_DOUBLE_TAG;
  else if (strcasecmp(flag, "ingress") == 0)
   f = ETHERSWITCH_PORT_INGRESS;
 }
 bzero(&p, sizeof(p));
 p.es_port = cfg->unit;
 if (ioctl(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
 if (n)
  p.es_flags &= ~f;
 else
  p.es_flags |= f;
 if (ioctl(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");
 return (0);
}
