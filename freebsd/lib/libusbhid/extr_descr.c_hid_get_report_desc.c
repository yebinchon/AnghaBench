
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ugd ;
struct usb_gen_descriptor {int ugd_maxlen; int ugd_actlen; void* ugd_data; } ;
typedef int * report_desc_t ;


 int USB_GET_REPORT_DESC ;
 int free (void*) ;
 int * hid_get_report_desc_compat7 (int) ;
 void* hid_pass_ptr (void*) ;
 int * hid_use_report_desc (void*,int) ;
 scalar_t__ ioctl (int,int ,struct usb_gen_descriptor*) ;
 void* malloc (int) ;
 int memset (struct usb_gen_descriptor*,int ,int) ;

report_desc_t
hid_get_report_desc(int fd)
{
 struct usb_gen_descriptor ugd;
 report_desc_t rep;
 void *data;

 memset(&ugd, 0, sizeof(ugd));


 ugd.ugd_data = hid_pass_ptr(((void*)0));
 ugd.ugd_maxlen = 65535;
 if (ioctl(fd, USB_GET_REPORT_DESC, &ugd) < 0) {





  return (((void*)0));

 }





 data = malloc(ugd.ugd_actlen);
 if (data == ((void*)0))
  return (((void*)0));


 ugd.ugd_data = hid_pass_ptr(data);
 ugd.ugd_maxlen = ugd.ugd_actlen;
 if (ioctl(fd, USB_GET_REPORT_DESC, &ugd) < 0) {

  free(data);
  return (((void*)0));
 }


 if (ugd.ugd_actlen < 1) {

  free(data);
  return (((void*)0));
 }


 if (((unsigned char *)data)[ugd.ugd_actlen -1] != 0xC0) {

  free(data);
  return (((void*)0));
 }

 rep = hid_use_report_desc(data, ugd.ugd_actlen);

 free(data);

 return (rep);
}
