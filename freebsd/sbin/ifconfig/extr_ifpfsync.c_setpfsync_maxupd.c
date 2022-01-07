
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsyncreq {int pfsyncr_maxupdates; } ;
struct afswtch {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ ifr_data; } ;


 int SIOCGETPFSYNC ;
 int SIOCSETPFSYNC ;
 int atoi (char const*) ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,scalar_t__) ;
 int memset (char*,int ,int) ;

void
setpfsync_maxupd(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct pfsyncreq preq;
 int maxupdates;

 maxupdates = atoi(val);
 if ((maxupdates < 0) || (maxupdates > 255))
  errx(1, "maxupd %s: out of range", val);

 memset((char *)&preq, 0, sizeof(struct pfsyncreq));
 ifr.ifr_data = (caddr_t)&preq;

 if (ioctl(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCGETPFSYNC");

 preq.pfsyncr_maxupdates = maxupdates;

 if (ioctl(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
  err(1, "SIOCSETPFSYNC");
}
