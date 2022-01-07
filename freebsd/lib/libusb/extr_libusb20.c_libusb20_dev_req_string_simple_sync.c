
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int temp ;
struct libusb20_device {int dummy; } ;


 int LIBUSB20_ERROR_INVALID_PARAM ;
 int LIBUSB20_ERROR_OTHER ;
 int isprint (char) ;
 int libusb20_dev_req_string_sync (struct libusb20_device*,int,int,int*,int) ;

int
libusb20_dev_req_string_simple_sync(struct libusb20_device *pdev,
    uint8_t str_index, void *ptr, uint16_t len)
{
 char *buf;
 int error;
 uint16_t langid;
 uint16_t n;
 uint16_t i;
 uint16_t c;
 uint8_t temp[255];
 uint8_t swap;



 if ((len < 1) || (ptr == ((void*)0))) {

  return (LIBUSB20_ERROR_INVALID_PARAM);
 }
 error = libusb20_dev_req_string_sync(pdev,
     0, 0, temp, sizeof(temp));
 if (error < 0) {
  *(uint8_t *)ptr = 0;
  return (error);
 }
 langid = temp[2] | (temp[3] << 8);

 error = libusb20_dev_req_string_sync(pdev, str_index,
     langid, temp, sizeof(temp));
 if (error < 0) {
  *(uint8_t *)ptr = 0;
  return (error);
 }
 if (temp[0] < 2) {

  *(uint8_t *)ptr = 0;
  return (LIBUSB20_ERROR_OTHER);
 }

 len--;


 n = (temp[0] / 2) - 1;
 if (n > len) {
  n = len;
 }

 swap = 3;


 buf = ptr;


 for (i = 0; (i != n); i++) {
  c = temp[(2 * i) + 2] | (temp[(2 * i) + 3] << 8);


  if (((c & 0xff00) == 0) && (swap & 1)) {

   *buf = c;
   swap = 1;
  } else if (((c & 0x00ff) == 0) && (swap & 2)) {

   *buf = c >> 8;
   swap = 2;
  } else {

   continue;
  }




  if ((*buf == '<') || (*buf == '>') || (!isprint(*buf))) {

   continue;
  }
  buf++;
 }
 *buf = 0;

 return (0);
}
