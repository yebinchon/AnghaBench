
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct pfsyncreq {TYPE_1__ pfsyncr_syncpeer; } ;
struct afswtch {int dummy; } ;
struct addrinfo {TYPE_3__* ai_addr; int ai_socktype; scalar_t__ ai_family; } ;
typedef int hints ;
typedef scalar_t__ caddr_t ;
struct TYPE_8__ {scalar_t__ ifr_data; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 int SIOCGETPFSYNC ;
 int SIOCSETPFSYNC ;
 int SOCK_DGRAM ;
 int bzero (char*,int) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 TYPE_4__ ifr ;
 int ioctl (int,int ,scalar_t__) ;
 int memset (struct addrinfo*,int ,int) ;

void
setpfsync_syncpeer(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct pfsyncreq preq;
 struct addrinfo hints, *peerres;
 int ecode;

 bzero((char *)&preq, sizeof(struct pfsyncreq));
 ifr.ifr_data = (caddr_t)&preq;

 if (ioctl(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCGETPFSYNC");

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_INET;
 hints.ai_socktype = SOCK_DGRAM;

 if ((ecode = getaddrinfo(val, ((void*)0), &hints, &peerres)) != 0)
  errx(1, "error in parsing address string: %s",
      gai_strerror(ecode));

 if (peerres->ai_addr->sa_family != AF_INET)
  errx(1, "only IPv4 addresses supported for the syncpeer");

 preq.pfsyncr_syncpeer.s_addr = ((struct sockaddr_in *)
     peerres->ai_addr)->sin_addr.s_addr;

 if (ioctl(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCSETPFSYNC");
 freeaddrinfo(peerres);
}
