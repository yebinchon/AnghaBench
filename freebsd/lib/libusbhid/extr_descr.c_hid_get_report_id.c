
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * report_desc_t ;
struct TYPE_3__ {int report_ID; } ;
typedef TYPE_1__ hid_item_t ;
typedef int hid_data_t ;


 int USB_GET_REPORT_ID ;
 int hid_dispose_report_desc (int *) ;
 int hid_end_parse (int ) ;
 int hid_feature ;
 scalar_t__ hid_get_item (int ,TYPE_1__*) ;
 int * hid_get_report_desc (int) ;
 int hid_get_report_id_compat7 (int) ;
 int hid_input ;
 int hid_output ;
 int hid_start_parse (int *,int,int) ;
 int ioctl (int,int ,int*) ;

int
hid_get_report_id(int fd)
{
 report_desc_t rep;
 hid_data_t d;
 hid_item_t h;
 int kindset;
 int temp = -1;
 int ret;

 if ((rep = hid_get_report_desc(fd)) == ((void*)0))
  goto use_ioctl;
 kindset = 1 << hid_input | 1 << hid_output | 1 << hid_feature;
 for (d = hid_start_parse(rep, kindset, -1); hid_get_item(d, &h); ) {

  if (h.report_ID != 0) {
   temp = h.report_ID;
   break;
  }
 }
 hid_end_parse(d);
 hid_dispose_report_desc(rep);

 if (temp > 0)
  return (temp);

use_ioctl:
 ret = ioctl(fd, USB_GET_REPORT_ID, &temp);





  ret = temp;

 return (ret);
}
