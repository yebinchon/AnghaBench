
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifmediareq {struct ifmediareq* ifm_ulist; int ifm_current; } ;
typedef int caddr_t ;
struct TYPE_2__ {int ifr_media; } ;


 int SIOCSIFMEDIA ;
 int err (int,char*) ;
 int free (struct ifmediareq*) ;
 TYPE_1__ ifr ;
 scalar_t__ ioctl (int,int ,int ) ;

__attribute__((used)) static void
setifmediacallback(int s, void *arg)
{
 struct ifmediareq *ifmr = (struct ifmediareq *)arg;
 static int did_it = 0;

 if (!did_it) {
  ifr.ifr_media = ifmr->ifm_current;
  if (ioctl(s, SIOCSIFMEDIA, (caddr_t)&ifr) < 0)
   err(1, "SIOCSIFMEDIA (media)");
  free(ifmr->ifm_ulist);
  free(ifmr);
  did_it = 1;
 }
}
