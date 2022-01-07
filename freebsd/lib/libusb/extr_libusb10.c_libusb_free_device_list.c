
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libusb_device ;


 int free (int **) ;
 int libusb_unref_device (int *) ;

void
libusb_free_device_list(libusb_device **list, int unref_devices)
{
 int i;

 if (list == ((void*)0))
  return;

 if (unref_devices) {
  for (i = 0; list[i] != ((void*)0); i++)
   libusb_unref_device(list[i]);
 }
 free(list);
}
