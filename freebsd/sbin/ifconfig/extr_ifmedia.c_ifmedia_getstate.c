
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_count; int* ifm_ulist; int ifm_name; } ;
typedef int caddr_t ;


 int SIOCGIFMEDIA ;
 int SIOCGIFXMEDIA ;
 int err (int,char*) ;
 int errx (int,char*,int ) ;
 scalar_t__ ioctl (int,int ,int ) ;
 scalar_t__ malloc (int) ;
 int memset (struct ifmediareq*,int ,int) ;
 int name ;
 int strlcpy (int ,int ,int) ;

struct ifmediareq *
ifmedia_getstate(int s)
{
 static struct ifmediareq *ifmr = ((void*)0);
 int *mwords;
 int xmedia = 1;

 if (ifmr == ((void*)0)) {
  ifmr = (struct ifmediareq *)malloc(sizeof(struct ifmediareq));
  if (ifmr == ((void*)0))
   err(1, "malloc");

  (void) memset(ifmr, 0, sizeof(struct ifmediareq));
  (void) strlcpy(ifmr->ifm_name, name,
      sizeof(ifmr->ifm_name));

  ifmr->ifm_count = 0;
  ifmr->ifm_ulist = ((void*)0);







  if (ioctl(s, SIOCGIFXMEDIA, (caddr_t)ifmr) < 0) {
   xmedia = 0;
  }
  if (xmedia == 0 && ioctl(s, SIOCGIFMEDIA, (caddr_t)ifmr) < 0) {
   err(1, "SIOCGIFMEDIA");
  }

  if (ifmr->ifm_count == 0)
   errx(1, "%s: no media types?", name);

  mwords = (int *)malloc(ifmr->ifm_count * sizeof(int));
  if (mwords == ((void*)0))
   err(1, "malloc");

  ifmr->ifm_ulist = mwords;
  if (xmedia) {
   if (ioctl(s, SIOCGIFXMEDIA, (caddr_t)ifmr) < 0)
    err(1, "SIOCGIFXMEDIA");
  } else {
   if (ioctl(s, SIOCGIFMEDIA, (caddr_t)ifmr) < 0)
    err(1, "SIOCGIFMEDIA");
  }
 }

 return ifmr;
}
