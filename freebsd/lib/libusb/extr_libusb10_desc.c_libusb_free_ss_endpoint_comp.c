
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_ss_endpoint_companion_descriptor {int dummy; } ;


 int free (struct libusb_ss_endpoint_companion_descriptor*) ;

void
libusb_free_ss_endpoint_comp(struct libusb_ss_endpoint_companion_descriptor *ep_comp)
{
 if (ep_comp == ((void*)0))
  return;

 free(ep_comp);
}
