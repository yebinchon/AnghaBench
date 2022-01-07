
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; TYPE_2__* iface; int * ip; } ;
typedef TYPE_1__ unit_t ;
typedef int pcap_if_list_t ;
struct TYPE_6__ {int iftype; struct TYPE_6__* next; scalar_t__ IOPname; scalar_t__ name; } ;
typedef TYPE_2__ iface_t ;


 int LIVE ;
 int MAX_CHASSIS ;
 int MAX_GEOSLOT ;
 scalar_t__ get_error_response (int,char*) ;
 int open_with_IOP (TYPE_1__*,int ) ;
 int pcap_platform_finddevs (int *,char*) ;
 int send_to_fd (int,scalar_t__,unsigned char*) ;
 scalar_t__ strcmp (scalar_t__,char const*) ;
 scalar_t__ strlen (scalar_t__) ;
 TYPE_1__** units ;

__attribute__((used)) static int acn_open_live(const char *name, char *errbuf, int *linktype) {
 int chassis, geoslot;
 unit_t *u;
 iface_t *p;
 pcap_if_list_t devlist;

 pcap_platform_finddevs(&devlist, errbuf);
 for (chassis = 0; chassis <= MAX_CHASSIS; chassis++) {
  for (geoslot = 0; geoslot <= MAX_GEOSLOT; geoslot++) {
   u = &units[chassis][geoslot];
   if (u->ip != ((void*)0)) {
    p = u->iface;
    while (p) {
     if (p->IOPname && p->name && (strcmp(p->name, name) == 0)) {
      *linktype = p->iftype;
      open_with_IOP(u, LIVE);
      send_to_fd(u->fd, strlen(p->IOPname)+1, (unsigned char *)p->IOPname);
      if (get_error_response(u->fd, errbuf)) {
       return -1;
      }
      return u->fd;
     }
     p = p->next;
    }
   }
  }
 }
 return -1;
}
