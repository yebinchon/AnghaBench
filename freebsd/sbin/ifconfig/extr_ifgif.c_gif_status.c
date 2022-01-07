
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ caddr_t ;
struct TYPE_3__ {scalar_t__ ifr_data; } ;


 int GIFBITS ;
 int GIFGOPTS ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,TYPE_1__*) ;
 int printb (char*,int,int ) ;
 int putchar (char) ;

__attribute__((used)) static void
gif_status(int s)
{
 int opts;

 ifr.ifr_data = (caddr_t)&opts;
 if (ioctl(s, GIFGOPTS, &ifr) == -1)
  return;
 if (opts == 0)
  return;
 printb("\toptions", opts, GIFBITS);
 putchar('\n');
}
