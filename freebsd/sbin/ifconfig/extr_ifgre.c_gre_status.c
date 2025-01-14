
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef void* caddr_t ;
struct TYPE_3__ {void* ifr_data; } ;


 int GREBITS ;
 int GREGKEY ;
 int GREGOPTS ;
 int GREGPORT ;
 TYPE_1__ ifr ;
 scalar_t__ ioctl (int,int ,TYPE_1__*) ;
 int printb (char*,scalar_t__,int ) ;
 int printf (char*,scalar_t__,...) ;
 int putchar (char) ;

__attribute__((used)) static void
gre_status(int s)
{
 uint32_t opts, port;

 opts = 0;
 ifr.ifr_data = (caddr_t)&opts;
 if (ioctl(s, GREGKEY, &ifr) == 0)
  if (opts != 0)
   printf("\tgrekey: 0x%x (%u)\n", opts, opts);
 opts = 0;
 if (ioctl(s, GREGOPTS, &ifr) != 0 || opts == 0)
  return;

 port = 0;
 ifr.ifr_data = (caddr_t)&port;
 if (ioctl(s, GREGPORT, &ifr) == 0 && port != 0)
  printf("\tudpport: %u\n", port);
 printb("\toptions", opts, GREBITS);
 putchar('\n');
}
