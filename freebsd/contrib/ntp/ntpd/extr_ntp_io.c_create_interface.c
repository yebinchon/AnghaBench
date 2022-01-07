
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct interface {scalar_t__ fd; int flags; scalar_t__ bfd; scalar_t__ family; int sin; int ignore_packets; int ifnum; int name; int bcast; } ;
typedef int sockaddr_u ;
struct TYPE_3__ {int addr; struct TYPE_3__* link; } ;
typedef TYPE_1__ remaddr_t ;
typedef struct interface endpt ;


 scalar_t__ AF (int *) ;
 scalar_t__ AF_INET ;
 int DPRINTF (int,char*) ;
 int DPRINT_INTERFACE (int,struct interface*) ;
 int INT_BROADCAST ;
 int INT_LOOPBACK ;
 int INT_MULTICAST ;
 int INT_WILDCARD ;
 scalar_t__ INVALID_SOCKET ;
 int IS_MCAST (int *) ;
 int LOG_ERR ;
 int LOG_INFO ;
 int RESM_INTERFACE ;
 int RESM_NTPONLY ;
 int RESTRICT_FLAGS ;
 int RES_IGNORE ;
 int SET_HOSTMASK (int *,scalar_t__) ;
 int add_addr_to_list (int *,struct interface*) ;
 int add_interface (struct interface*) ;
 int delete_interface (struct interface*) ;
 int hack_restrict (int ,int *,int *,int,int,int ,int ) ;
 int log_listen_address (struct interface*) ;
 struct interface* loopback_interface ;
 int msyslog (int ,char*,int ,int ,...) ;
 struct interface* new_interface (struct interface*) ;
 scalar_t__ open_socket (int *,int ,int ,struct interface*) ;
 TYPE_1__* remoteaddr_list ;
 scalar_t__ socket_multicast_enable (struct interface*,int *) ;
 int stoa (int *) ;

__attribute__((used)) static struct interface *
create_interface(
 u_short port,
 struct interface * protot
 )
{
 sockaddr_u resmask;
 endpt * iface;




 DPRINTF(2, ("create_interface(%s#%d)\n", stoa(&protot->sin),
      port));


 iface = new_interface(protot);




 iface->fd = open_socket(&iface->sin, 0, 0, iface);

 if (iface->fd != INVALID_SOCKET)
  log_listen_address(iface);

 if ((INT_BROADCAST & iface->flags)
     && iface->bfd != INVALID_SOCKET)
  msyslog(LOG_INFO, "Listening on broadcast address %s#%d",
   stoa((&iface->bcast)), port);

 if (INVALID_SOCKET == iface->fd
     && INVALID_SOCKET == iface->bfd) {
  msyslog(LOG_ERR, "unable to create socket on %s (%d) for %s#%d",
   iface->name,
   iface->ifnum,
   stoa((&iface->sin)),
   port);
  delete_interface(iface);
  return ((void*)0);
 }




 SET_HOSTMASK(&resmask, AF(&iface->sin));
 hack_restrict(RESTRICT_FLAGS, &iface->sin, &resmask,
        -4, RESM_NTPONLY | RESM_INTERFACE, RES_IGNORE, 0);





 if (((void*)0) == loopback_interface && AF_INET == iface->family
     && (INT_LOOPBACK & iface->flags))
  loopback_interface = iface;




 add_addr_to_list(&iface->sin, iface);
 add_interface(iface);
 DPRINT_INTERFACE(2, (iface, "created ", "\n"));
 return iface;
}
