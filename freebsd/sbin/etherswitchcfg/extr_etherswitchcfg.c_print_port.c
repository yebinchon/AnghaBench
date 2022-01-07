
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vlan_mode; } ;
struct cfg {scalar_t__ mediatypes; TYPE_1__ conf; int fd; } ;
typedef int p ;
struct TYPE_7__ {int* ifm_ulist; int ifm_count; int ifm_current; scalar_t__ ifm_active; int ifm_status; } ;
struct TYPE_8__ {int es_port; int es_pvid; int es_nleds; size_t* es_led; TYPE_2__ es_ifmr; int es_flags; } ;
typedef TYPE_3__ etherswitch_port_t ;


 int ETHERSWITCH_PORT_FLAGS_BITS ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 int EX_OSERR ;
 int IFMEDIAREQ_NULISTENTRIES ;
 int IFM_ACTIVE ;
 int IOETHERSWITCHGETPORT ;
 int bzero (TYPE_3__*,int) ;
 int err (int ,char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_3__*) ;
 char** ledstyles ;
 int print_media_word (int,int) ;
 int printb (char*,int ,int ) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void
print_port(struct cfg *cfg, int port)
{
 etherswitch_port_t p;
 int ifm_ulist[IFMEDIAREQ_NULISTENTRIES];
 int i;

 bzero(&p, sizeof(p));
 p.es_port = port;
 p.es_ifmr.ifm_ulist = ifm_ulist;
 p.es_ifmr.ifm_count = IFMEDIAREQ_NULISTENTRIES;
 if (ioctl(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
 printf("port%d:\n", port);
 if (cfg->conf.vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
  printf("\tpvid: %d\n", p.es_pvid);
 printb("\tflags", p.es_flags, ETHERSWITCH_PORT_FLAGS_BITS);
 printf("\n");
 if (p.es_nleds) {
  printf("\tled: ");
  for (i = 0; i < p.es_nleds; i++) {
   printf("%d:%s%s", i+1, ledstyles[p.es_led[i]], (i==p.es_nleds-1)?"":" ");
  }
  printf("\n");
 }
 printf("\tmedia: ");
 print_media_word(p.es_ifmr.ifm_current, 1);
 if (p.es_ifmr.ifm_active != p.es_ifmr.ifm_current) {
  putchar(' ');
  putchar('(');
  print_media_word(p.es_ifmr.ifm_active, 0);
  putchar(')');
 }
 putchar('\n');
 printf("\tstatus: %s\n", (p.es_ifmr.ifm_status & IFM_ACTIVE) != 0 ? "active" : "no carrier");
 if (cfg->mediatypes) {
  printf("\tsupported media:\n");
  if (p.es_ifmr.ifm_count > IFMEDIAREQ_NULISTENTRIES)
   p.es_ifmr.ifm_count = IFMEDIAREQ_NULISTENTRIES;
  for (i=0; i<p.es_ifmr.ifm_count; i++) {
   printf("\t\tmedia ");
   print_media_word(ifm_ulist[i], 0);
   putchar('\n');
  }
 }
}
