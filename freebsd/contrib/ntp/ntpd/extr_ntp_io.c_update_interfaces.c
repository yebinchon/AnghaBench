
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_27__ {int addr; TYPE_6__* ep; struct TYPE_27__* link; } ;
typedef TYPE_2__ remaddr_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_interfaceiter_t ;
struct TYPE_26__ {unsigned int family; } ;
struct TYPE_28__ {int name; TYPE_1__ address; } ;
typedef TYPE_3__ isc_interface_t ;
typedef int (* interface_receiver_t ) (void*,TYPE_4__*) ;
struct TYPE_29__ {TYPE_6__* ep; int action; } ;
typedef TYPE_4__ interface_info_t ;
struct TYPE_30__ {char* name; int flags; scalar_t__ ignore_packets; int phase; int sin; struct TYPE_30__* elink; int * peers; } ;
typedef TYPE_6__ endpt ;





 unsigned int AF_INET ;
 unsigned int AF_INET6 ;
 int DPRINTF (int,char*) ;
 int DPRINT_INTERFACE (int,TYPE_6__*) ;
 int FALSE ;
 int IFS_CREATED ;
 int IFS_DELETED ;
 int IFS_EXISTS ;
 int INT_MCASTIF ;
 int INT_MCASTOPEN ;
 int INT_UP ;
 int INT_WILDCARD ;
 scalar_t__ ISC_FALSE ;
 scalar_t__ ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int LOG_ERR ;
 int LOG_INFO ;
 int TRUE ;
 scalar_t__ broadcast_client_enabled ;
 int convert_isc_if (TYPE_3__*,TYPE_6__*,int ) ;
 TYPE_6__* create_interface (int ,TYPE_6__*) ;
 int delete_interface (TYPE_6__*) ;
 TYPE_6__* ep_list ;
 TYPE_6__* getinterface (int *,int) ;
 int init_interface (TYPE_6__*) ;
 int interface_action (char*,int *,int) ;
 int io_setbclient () ;
 int ipv4_works ;
 int ipv6_works ;
 scalar_t__ is_anycast (int *,int ) ;
 int is_valid (int *,int ) ;
 scalar_t__ is_wildcard_addr (int *) ;
 scalar_t__ isc_interfaceiter_create (int *,int **) ;
 scalar_t__ isc_interfaceiter_current (int *,TYPE_3__*) ;
 int isc_interfaceiter_destroy (int **) ;
 scalar_t__ isc_interfaceiter_first (int *) ;
 scalar_t__ isc_interfaceiter_next (int *) ;
 TYPE_6__* loopback_interface ;
 int msyslog (int ,char*,char*,...) ;
 int refresh_all_peerinterfaces () ;
 scalar_t__ refresh_interface (TYPE_6__*) ;
 TYPE_2__* remoteaddr_list ;
 int remove_interface (TYPE_6__*) ;
 int set_peerdstadr (int *,int *) ;
 scalar_t__ socket_multicast_enable (TYPE_6__*,int *) ;
 int stoa (int *) ;
 int strlcpy (char*,char*,int) ;
 int stub1 (void*,TYPE_4__*) ;
 int stub2 (void*,TYPE_4__*) ;
 int stub3 (void*,TYPE_4__*) ;
 scalar_t__ sys_bclient ;
 int sys_interphase ;

__attribute__((used)) static int
update_interfaces(
 u_short port,
 interface_receiver_t receiver,
 void * data
 )
{
 isc_mem_t * mctx = (void *)-1;
 interface_info_t ifi;
 isc_interfaceiter_t * iter;
 isc_result_t result;
 isc_interface_t isc_if;
 int new_interface_found;
 unsigned int family;
 endpt enumep;
 endpt * ep;
 endpt * next_ep;

 DPRINTF(3, ("update_interfaces(%d)\n", port));







 new_interface_found = FALSE;
 iter = ((void*)0);
 result = isc_interfaceiter_create(mctx, &iter);

 if (result != ISC_R_SUCCESS)
  return 0;





 sys_interphase ^= 0x1;

 for (result = isc_interfaceiter_first(iter);
      ISC_R_SUCCESS == result;
      result = isc_interfaceiter_next(iter)) {

  result = isc_interfaceiter_current(iter, &isc_if);

  if (result != ISC_R_SUCCESS)
   break;


  family = isc_if.address.family;
  if (AF_INET != family && AF_INET6 != family)
   continue;
  if (AF_INET == family && !ipv4_works)
   continue;
  if (AF_INET6 == family && !ipv6_works)
   continue;


  init_interface(&enumep);

  convert_isc_if(&isc_if, &enumep, port);

  DPRINT_INTERFACE(4, (&enumep, "examining ", "\n"));




  switch (interface_action(enumep.name, &enumep.sin,
      enumep.flags)) {

  case 129:
   DPRINTF(4, ("ignoring interface %s (%s) - by nic rules\n",
        enumep.name, stoa(&enumep.sin)));
   continue;

  case 128:
   DPRINTF(4, ("listen interface %s (%s) - by nic rules\n",
        enumep.name, stoa(&enumep.sin)));
   enumep.ignore_packets = ISC_FALSE;
   break;

  case 130:
   DPRINTF(4, ("drop on interface %s (%s) - by nic rules\n",
        enumep.name, stoa(&enumep.sin)));
   enumep.ignore_packets = ISC_TRUE;
   break;
  }


  if (!(enumep.flags & INT_UP)) {
   DPRINTF(4, ("skipping interface %s (%s) - DOWN\n",
        enumep.name, stoa(&enumep.sin)));
   continue;
  }






  if (is_wildcard_addr(&enumep.sin))
   continue;

  if (is_anycast(&enumep.sin, isc_if.name))
   continue;




  if (!is_valid(&enumep.sin, isc_if.name))
   continue;







  ep = getinterface(&enumep.sin, INT_WILDCARD);

  if (ep != ((void*)0) && refresh_interface(ep)) {




   if (ep->phase != sys_interphase) {
    strlcpy(ep->name, enumep.name,
     sizeof(ep->name));
    ep->ignore_packets =
         enumep.ignore_packets;
   } else {

    strlcpy(ep->name, "*multiple*",
     sizeof(ep->name));
   }

   DPRINT_INTERFACE(4, (ep, "updating ",
          " present\n"));

   if (ep->ignore_packets !=
       enumep.ignore_packets) {
    msyslog(LOG_ERR,
     "WARNING: conflicting enable configuration for interfaces %s and %s for address %s - unsupported configuration - address DISABLED",
     enumep.name, ep->name,
     stoa(&enumep.sin));

    ep->ignore_packets = ISC_TRUE;
   }

   ep->phase = sys_interphase;

   ifi.action = IFS_EXISTS;
   ifi.ep = ep;
   if (receiver != ((void*)0))
    (*receiver)(data, &ifi);
  } else {
   ep = create_interface(port, &enumep);

   if (ep != ((void*)0)) {
    ifi.action = IFS_CREATED;
    ifi.ep = ep;
    if (receiver != ((void*)0))
     (*receiver)(data, &ifi);

    new_interface_found = TRUE;
    DPRINT_INTERFACE(3,
     (ep, "updating ",
      " new - created\n"));
   } else {
    DPRINT_INTERFACE(3,
     (&enumep, "updating ",
      " new - creation FAILED"));

    msyslog(LOG_INFO,
     "failed to init interface for address %s",
     stoa(&enumep.sin));
    continue;
   }
  }
 }

 isc_interfaceiter_destroy(&iter);





 for (ep = ep_list; ep != ((void*)0); ep = next_ep) {
  next_ep = ep->elink;
  if (((INT_WILDCARD | INT_MCASTIF) & ep->flags) ||
      ep->phase == sys_interphase)
   continue;

  DPRINT_INTERFACE(3, (ep, "updating ",
         "GONE - deleting\n"));
  remove_interface(ep);

  ifi.action = IFS_DELETED;
  ifi.ep = ep;
  if (receiver != ((void*)0))
   (*receiver)(data, &ifi);


  while (ep->peers != ((void*)0))
   set_peerdstadr(ep->peers, ((void*)0));





  if (ep == loopback_interface)
   loopback_interface = ((void*)0);

  delete_interface(ep);
 }







 refresh_all_peerinterfaces();

 if (broadcast_client_enabled)
  io_setbclient();

 if (sys_bclient)
  io_setbclient();
 return new_interface_found;
}
