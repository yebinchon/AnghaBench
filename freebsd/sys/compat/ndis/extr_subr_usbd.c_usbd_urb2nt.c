
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int STATUS_CANCELLED ;
 int STATUS_DEVICE_NOT_CONNECTED ;
 int STATUS_FAILURE ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_NOT_SUPPORTED ;
 int STATUS_NO_MEMORY ;
 int STATUS_PENDING ;
 int STATUS_SUCCESS ;
__attribute__((used)) static int32_t
usbd_urb2nt(int32_t status)
{

 switch (status) {
 case 128:
  return (STATUS_SUCCESS);
 case 133:
  return (STATUS_DEVICE_NOT_CONNECTED);
 case 130:
  return (STATUS_PENDING);
 case 132:
  return (STATUS_NOT_IMPLEMENTED);
 case 131:
  return (STATUS_NO_MEMORY);
 case 129:
  return (STATUS_NOT_SUPPORTED);
 case 134:
  return (STATUS_CANCELLED);
 default:
  break;
 }

 return (STATUS_FAILURE);
}
