
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cfg {int fd; int unit; } ;
typedef int p ;
struct TYPE_4__ {int es_nleds; int* es_led; int es_port; } ;
typedef TYPE_1__ etherswitch_port_t ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IOETHERSWITCHGETPORT ;
 int IOETHERSWITCHSETPORT ;
 int bzero (TYPE_1__*,int) ;
 int err (int ,char*) ;
 int errx (int ,char*,char*,...) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int ** ledstyles ;
 scalar_t__ strcmp (char*,int *) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int
set_port_led(struct cfg *cfg, int argc, char *argv[])
{
 etherswitch_port_t p;
 int led;
 int i;

 if (argc < 3)
  return (-1);

 bzero(&p, sizeof(p));
 p.es_port = cfg->unit;
 if (ioctl(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");

 led = strtol(argv[1], ((void*)0), 0);
 if (led < 1 || led > p.es_nleds)
  errx(EX_USAGE, "invalid led number %s; must be between 1 and %d",
   argv[1], p.es_nleds);

 led--;

 for (i=0; ledstyles[i] != ((void*)0); i++) {
  if (strcmp(argv[2], ledstyles[i]) == 0) {
   p.es_led[led] = i;
   break;
  }
 }
 if (ledstyles[i] == ((void*)0))
  errx(EX_USAGE, "invalid led style \"%s\"", argv[2]);

 if (ioctl(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");

 return (0);
}
