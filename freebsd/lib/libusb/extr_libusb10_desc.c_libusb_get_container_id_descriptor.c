
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_context {int dummy; } ;
struct libusb_container_id_descriptor {scalar_t__ bDevCapabilityType; int ContainerID; int bReserved; int bDescriptorType; scalar_t__ bLength; } ;
struct libusb_bos_dev_capability_descriptor {scalar_t__ bDevCapabilityType; scalar_t__ bLength; int * dev_capability_data; int bDescriptorType; } ;


 scalar_t__ LIBUSB_BT_CONTAINER_ID ;
 scalar_t__ LIBUSB_BT_CONTAINER_ID_SIZE ;
 int LIBUSB_ERROR_INVALID_PARAM ;
 int LIBUSB_ERROR_IO ;
 int LIBUSB_ERROR_NO_MEM ;
 struct libusb_container_id_descriptor* malloc (int) ;
 int memcpy (int ,int *,int) ;

int
libusb_get_container_id_descriptor(struct libusb_context *ctx,
    struct libusb_bos_dev_capability_descriptor *dev_cap,
    struct libusb_container_id_descriptor **container_id)
{
 struct libusb_container_id_descriptor *desc;

 if (dev_cap == ((void*)0) || container_id == ((void*)0) ||
     dev_cap->bDevCapabilityType != LIBUSB_BT_CONTAINER_ID)
  return (LIBUSB_ERROR_INVALID_PARAM);
 if (dev_cap->bLength < LIBUSB_BT_CONTAINER_ID_SIZE)
  return (LIBUSB_ERROR_IO);

 desc = malloc(sizeof(*desc));
 if (desc == ((void*)0))
  return (LIBUSB_ERROR_NO_MEM);

 desc->bLength = LIBUSB_BT_CONTAINER_ID_SIZE;
 desc->bDescriptorType = dev_cap->bDescriptorType;
 desc->bDevCapabilityType = dev_cap->bDevCapabilityType;
 desc->bReserved = dev_cap->dev_capability_data[0];
 memcpy(desc->ContainerID, dev_cap->dev_capability_data + 1,
     sizeof(desc->ContainerID));

 *container_id = desc;
 return (0);
}
