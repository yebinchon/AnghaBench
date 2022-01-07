
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct cfg {int fd; } ;
typedef int p ;
struct TYPE_5__ {scalar_t__ es_nitems; int es_portmask; int es_macaddr; scalar_t__ id; } ;
typedef TYPE_1__ etherswitch_atu_table_t ;
typedef TYPE_1__ etherswitch_atu_entry_t ;
typedef int e ;


 int EX_OSERR ;
 int IOETHERSWITCHGETTABLE ;
 int IOETHERSWITCHGETTABLEENTRY ;
 int bzero (TYPE_1__*,int) ;
 int err (int ,char*) ;
 char* ether_ntoa (void*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int printf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static int
atu_dump(struct cfg *cfg, int argc, char *argv[])
{
 etherswitch_atu_table_t p;
 etherswitch_atu_entry_t e;
 uint32_t i;

 (void) argc;
 (void) argv;


 bzero(&p, sizeof(p));

 if (ioctl(cfg->fd, IOETHERSWITCHGETTABLE, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETTABLE)");


 for (i = 0; i < p.es_nitems; i++) {
  bzero(&e, sizeof(e));
  e.id = i;
  if (ioctl(cfg->fd, IOETHERSWITCHGETTABLEENTRY, &e) != 0)
   break;

  printf(" [%d] %s: portmask 0x%08x\n", i,
      ether_ntoa((void *) &e.es_macaddr),
      e.es_portmask);
 }

 return (1);
}
