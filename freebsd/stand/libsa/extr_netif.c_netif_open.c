
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netif {TYPE_1__* nif_driver; int nif_unit; } ;
struct iodesc {struct netif* io_netif; } ;
struct TYPE_2__ {char* netif_bname; } ;


 int EINVAL ;
 int EMFILE ;
 int SOPEN_MAX ;
 int bzero (struct iodesc*,int) ;
 int errno ;
 int netif_attach (struct netif*,struct iodesc*,void*) ;
 int netif_init () ;
 scalar_t__ netif_probe (struct netif*,void*) ;
 struct netif* netif_select (void*) ;
 int panic (char*) ;
 int printf (char*,char*,int ) ;
 struct iodesc* sockets ;

int
netif_open(void *machdep_hint)
{
 int fd;
 struct iodesc *s;
 struct netif *nif;


 for (fd = 0, s = sockets; fd < SOPEN_MAX; fd++, s++)
  if (s->io_netif == (struct netif *)0)
   goto fnd;
 errno = EMFILE;
 return (-1);

fnd:
 bzero(s, sizeof(*s));
 netif_init();
 nif = netif_select(machdep_hint);
 if (!nif)
  panic("netboot: no interfaces left untried");
 if (netif_probe(nif, machdep_hint)) {
  printf("netboot: couldn't probe %s%d\n",
      nif->nif_driver->netif_bname, nif->nif_unit);
  errno = EINVAL;
  return (-1);
 }
 netif_attach(nif, s, machdep_hint);

 return (fd);
}
