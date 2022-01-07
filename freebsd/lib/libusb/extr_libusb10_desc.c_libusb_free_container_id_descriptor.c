
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_container_id_descriptor {int dummy; } ;


 int free (struct libusb_container_id_descriptor*) ;

void
libusb_free_container_id_descriptor(
    struct libusb_container_id_descriptor *container_id)
{

 free(container_id);
}
