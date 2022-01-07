
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int report_ID; } ;
typedef TYPE_1__ hid_item_t ;
typedef TYPE_2__* hid_data_t ;
struct TYPE_8__ {int reportid; } ;


 int hid_get_item_raw (TYPE_2__*,TYPE_1__*) ;

int
hid_get_item(hid_data_t s, hid_item_t *h)
{
 int r;

 for (;;) {
  r = hid_get_item_raw(s, h);
  if (r <= 0 || s->reportid == -1 || h->report_ID == s->reportid)
   break;
 }
 return (r);
}
