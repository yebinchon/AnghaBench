
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct afswtch {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {scalar_t__ ifr_data; } ;


 int GREGOPTS ;
 int GRESOPTS ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,TYPE_1__*) ;
 int warn (char*) ;

__attribute__((used)) static void
setifgreopts(const char *val, int d, int s, const struct afswtch *afp)
{
 uint32_t opts;

 ifr.ifr_data = (caddr_t)&opts;
 if (ioctl(s, GREGOPTS, &ifr) == -1) {
  warn("ioctl(GREGOPTS)");
  return;
 }

 if (d < 0)
  opts &= ~(-d);
 else
  opts |= d;

 if (ioctl(s, GRESOPTS, &ifr) == -1) {
  warn("ioctl(GIFSOPTS)");
  return;
 }
}
