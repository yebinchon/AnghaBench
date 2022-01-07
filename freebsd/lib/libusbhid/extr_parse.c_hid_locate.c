
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hid_data {int dummy; } ;
typedef int report_desc_t ;
struct TYPE_4__ {int kind; int flags; unsigned int usage; scalar_t__ report_size; } ;
typedef TYPE_1__ hid_item_t ;
typedef enum hid_kind { ____Placeholder_hid_kind } hid_kind ;


 int HIO_CONST ;
 int hid_end_parse (struct hid_data*) ;
 scalar_t__ hid_get_item (struct hid_data*,TYPE_1__*) ;
 struct hid_data* hid_start_parse (int ,int,int) ;

int
hid_locate(report_desc_t desc, unsigned int u, enum hid_kind k,
    hid_item_t *h, int id)
{
 struct hid_data *d;

 for (d = hid_start_parse(desc, 1 << k, id); hid_get_item(d, h); ) {
  if (h->kind == k && !(h->flags & HIO_CONST) && h->usage == u) {
   hid_end_parse(d);
   return (1);
  }
 }
 hid_end_parse(d);
 h->report_size = 0;
 return (0);
}
