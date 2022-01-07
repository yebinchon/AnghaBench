
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; } ;
struct afswtch {int dummy; } ;
typedef int my_ifr ;
typedef int caddr_t ;


 int Perror (char const*) ;
 int SIOCSIFFLAGS ;
 int getifflags (int ,int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int name ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
setifflags(const char *vname, int value, int s, const struct afswtch *afp)
{
 struct ifreq my_ifr;
 int flags;

 flags = getifflags(name, s);
 if (value < 0) {
  value = -value;
  flags &= ~value;
 } else
  flags |= value;
 memset(&my_ifr, 0, sizeof(my_ifr));
 (void) strlcpy(my_ifr.ifr_name, name, sizeof(my_ifr.ifr_name));
 my_ifr.ifr_flags = flags & 0xffff;
 my_ifr.ifr_flagshigh = flags >> 16;
 if (ioctl(s, SIOCSIFFLAGS, (caddr_t)&my_ifr) < 0)
  Perror(vname);
}
