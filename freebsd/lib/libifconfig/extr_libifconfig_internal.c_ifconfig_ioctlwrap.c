
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned long ioctl_request; int errcode; int errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;


 int IOCTL ;
 int errno ;
 scalar_t__ ifconfig_socket (TYPE_2__*,int const,int*) ;
 scalar_t__ ioctl (int,unsigned long,void*) ;

int
ifconfig_ioctlwrap(ifconfig_handle_t *h, const int addressfamily,
    unsigned long request, void *data)
{
 int s;

 if (ifconfig_socket(h, addressfamily, &s) != 0) {
  return (-1);
 }

 if (ioctl(s, request, data) != 0) {
  h->error.errtype = IOCTL;
  h->error.ioctl_request = request;
  h->error.errcode = errno;
  return (-1);
 }

 return (0);
}
