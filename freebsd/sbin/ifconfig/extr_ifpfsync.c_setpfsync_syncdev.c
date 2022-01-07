
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsyncreq {int pfsyncr_syncdev; } ;
struct afswtch {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ ifr_data; } ;


 int SIOCGETPFSYNC ;
 int SIOCSETPFSYNC ;
 int bzero (char*,int) ;
 int err (int,char*) ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,scalar_t__) ;
 int strlcpy (int ,char const*,int) ;

void
setpfsync_syncdev(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct pfsyncreq preq;

 bzero((char *)&preq, sizeof(struct pfsyncreq));
 ifr.ifr_data = (caddr_t)&preq;

 if (ioctl(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCGETPFSYNC");

 strlcpy(preq.pfsyncr_syncdev, val, sizeof(preq.pfsyncr_syncdev));

 if (ioctl(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCSETPFSYNC");
}
