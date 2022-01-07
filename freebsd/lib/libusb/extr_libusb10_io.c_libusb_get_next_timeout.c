
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int libusb_context ;


 int timerclear (struct timeval*) ;

int
libusb_get_next_timeout(libusb_context *ctx, struct timeval *tv)
{

 timerclear(tv);
 return (0);
}
