
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_fib; int ifr_name; } ;
typedef int ifr ;
typedef int caddr_t ;


 scalar_t__ RT_DEFAULT_FIB ;
 int SIOCGIFFIB ;
 int SIOCGTUNFIB ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int name ;
 int printf (char*,scalar_t__) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
fib_status(int s)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 if (ioctl(s, SIOCGIFFIB, (caddr_t)&ifr) == 0 &&
     ifr.ifr_fib != RT_DEFAULT_FIB)
  printf("\tfib: %u\n", ifr.ifr_fib);

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 if (ioctl(s, SIOCGTUNFIB, (caddr_t)&ifr) == 0 &&
     ifr.ifr_fib != RT_DEFAULT_FIB)
  printf("\ttunnelfib: %u\n", ifr.ifr_fib);
}
