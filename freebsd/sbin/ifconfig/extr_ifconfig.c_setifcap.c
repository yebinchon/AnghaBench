
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afswtch {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {int ifr_curcap; int ifr_reqcap; } ;


 int Perror (char const*) ;
 int SIOCGIFCAP ;
 int SIOCSIFCAP ;
 int exit (int) ;
 TYPE_1__ ifr ;
 scalar_t__ ioctl (int,int ,int ) ;

void
setifcap(const char *vname, int value, int s, const struct afswtch *afp)
{
 int flags;

  if (ioctl(s, SIOCGIFCAP, (caddr_t)&ifr) < 0) {
   Perror("ioctl (SIOCGIFCAP)");
   exit(1);
  }
 flags = ifr.ifr_curcap;
 if (value < 0) {
  value = -value;
  flags &= ~value;
 } else
  flags |= value;
 flags &= ifr.ifr_reqcap;
 ifr.ifr_reqcap = flags;
 if (ioctl(s, SIOCSIFCAP, (caddr_t)&ifr) < 0)
  Perror(vname);
}
