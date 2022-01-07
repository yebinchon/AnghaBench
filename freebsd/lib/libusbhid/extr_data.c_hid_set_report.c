
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ugd ;
struct usb_gen_descriptor {unsigned int ugd_maxlen; int ugd_report_type; int ugd_data; } ;
typedef enum hid_kind { ____Placeholder_hid_kind } hid_kind ;


 int USB_SET_REPORT ;
 int hid_pass_ptr (unsigned char*) ;
 int ioctl (int,int ,struct usb_gen_descriptor*) ;
 int memset (struct usb_gen_descriptor*,int ,int) ;

int
hid_set_report(int fd, enum hid_kind k, unsigned char *data, unsigned int size)
{
 struct usb_gen_descriptor ugd;

 memset(&ugd, 0, sizeof(ugd));
 ugd.ugd_data = hid_pass_ptr(data);
 ugd.ugd_maxlen = size;
 ugd.ugd_report_type = k + 1;
 return (ioctl(fd, USB_SET_REPORT, &ugd));
}
