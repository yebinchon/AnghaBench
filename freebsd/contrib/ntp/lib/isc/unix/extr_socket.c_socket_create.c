
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int isc_sockettype_t ;
typedef int isc_socketmgr_t ;
typedef int isc_socketmethods_t ;
typedef int isc_socket_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_18__ {size_t maxfd; int lock; int socklist; int * fdlock; int * fdstate; TYPE_5__** fds; int stats; } ;
typedef TYPE_4__ isc__socketmgr_t ;
struct TYPE_15__ {int * methods; } ;
struct TYPE_19__ {int type; int pf; int references; size_t fd; TYPE_3__* manager; TYPE_1__ common; int * statsindex; } ;
typedef TYPE_5__ isc__socket_t ;
struct TYPE_17__ {TYPE_2__* fdpollinfo; } ;
struct TYPE_16__ {scalar_t__ want_read; scalar_t__ want_write; } ;


 int AF_INET ;
 int CREATION ;
 int FDLOCK_ID (size_t) ;
 int INSIST (int) ;
 int ISC_LIST_APPEND (int ,TYPE_5__*,int ) ;
 int ISC_MSGSET_SOCKET ;
 int ISC_MSG_CREATED ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int MANAGED ;
 int REQUIRE (int) ;
 size_t STATID_OPENFAIL ;
 int UNLOCK (int *) ;
 int VALID_MANAGER (TYPE_4__*) ;
 scalar_t__ allocate_socket (TYPE_4__*,int ,TYPE_5__**) ;
 int free_socket (TYPE_5__**) ;
 int inc_stats (int ,int ) ;
 int isc_msgcat ;
 int isc_sockettype_fdwatch ;



 int link ;
 scalar_t__ opensocket (TYPE_4__*,TYPE_5__*,TYPE_5__*) ;
 int socket_log (TYPE_5__*,int *,int ,int ,int ,int ,char*) ;
 int socketmethods ;
 int * tcp4statsindex ;
 int * tcp6statsindex ;
 int * unixstatsindex ;
 int * upd4statsindex ;
 int * upd6statsindex ;

__attribute__((used)) static isc_result_t
socket_create(isc_socketmgr_t *manager0, int pf, isc_sockettype_t type,
       isc_socket_t **socketp, isc_socket_t *dup_socket)
{
 isc__socket_t *sock = ((void*)0);
 isc__socketmgr_t *manager = (isc__socketmgr_t *)manager0;
 isc_result_t result;
 int lockid;

 REQUIRE(VALID_MANAGER(manager));
 REQUIRE(socketp != ((void*)0) && *socketp == ((void*)0));
 REQUIRE(type != isc_sockettype_fdwatch);

 result = allocate_socket(manager, type, &sock);
 if (result != ISC_R_SUCCESS)
  return (result);

 switch (sock->type) {
 case 129:
  sock->statsindex =
   (pf == AF_INET) ? upd4statsindex : upd6statsindex;
  break;
 case 130:
  sock->statsindex =
   (pf == AF_INET) ? tcp4statsindex : tcp6statsindex;
  break;
 case 128:
  sock->statsindex = unixstatsindex;
  break;
 default:
  INSIST(0);
 }

 sock->pf = pf;

 result = opensocket(manager, sock, (isc__socket_t *)dup_socket);
 if (result != ISC_R_SUCCESS) {
  inc_stats(manager->stats, sock->statsindex[STATID_OPENFAIL]);
  free_socket(&sock);
  return (result);
 }

 sock->common.methods = (isc_socketmethods_t *)&socketmethods;
 sock->references = 1;
 *socketp = (isc_socket_t *)sock;






 lockid = FDLOCK_ID(sock->fd);
 LOCK(&manager->fdlock[lockid]);
 manager->fds[sock->fd] = sock;
 manager->fdstate[sock->fd] = MANAGED;




 UNLOCK(&manager->fdlock[lockid]);

 LOCK(&manager->lock);
 ISC_LIST_APPEND(manager->socklist, sock, link);




 UNLOCK(&manager->lock);

 socket_log(sock, ((void*)0), CREATION, isc_msgcat, ISC_MSGSET_SOCKET,
     ISC_MSG_CREATED, dup_socket == ((void*)0) ? "dupped" : "created");

 return (ISC_R_SUCCESS);
}
