
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s_addr; } ;
struct pfsyncreq {TYPE_1__ pfsyncr_syncpeer; } ;
struct afswtch {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ ifr_data; } ;


 int SIOCGETPFSYNC ;
 int SIOCSETPFSYNC ;
 int bzero (char*,int) ;
 int err (int,char*) ;
 TYPE_2__ ifr ;
 int ioctl (int,int ,scalar_t__) ;

void
unsetpfsync_syncpeer(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct pfsyncreq preq;

 bzero((char *)&preq, sizeof(struct pfsyncreq));
 ifr.ifr_data = (caddr_t)&preq;

 if (ioctl(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCGETPFSYNC");

 preq.pfsyncr_syncpeer.s_addr = 0;

 if (ioctl(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCSETPFSYNC");
}
