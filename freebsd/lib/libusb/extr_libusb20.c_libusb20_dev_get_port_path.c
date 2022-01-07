
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct libusb20_device {int port_level; int parent_address; int parent_port; int port_path; } ;


 int LIBUSB20_ERROR_OVERFLOW ;
 int memcpy (int*,int ,int) ;

int
libusb20_dev_get_port_path(struct libusb20_device *pdev, uint8_t *buf, uint8_t bufsize)
{

 if (pdev->port_level == 0) {



  if (bufsize < 2)
   return (LIBUSB20_ERROR_OVERFLOW);
  buf[0] = pdev->parent_address;
  buf[1] = pdev->parent_port;
  return (2);
 }


 if (pdev->port_level > bufsize)
  return (LIBUSB20_ERROR_OVERFLOW);


 memcpy(buf, pdev->port_path, pdev->port_level);

 return (pdev->port_level);
}
