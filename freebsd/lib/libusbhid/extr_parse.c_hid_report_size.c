
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hid_item {int kind; int pos; int report_size; int report_count; scalar_t__ report_ID; } ;
struct hid_data {int dummy; } ;
typedef int report_desc_t ;
typedef enum hid_kind { ____Placeholder_hid_kind } hid_kind ;


 int hid_end_parse (struct hid_data*) ;
 scalar_t__ hid_get_item (struct hid_data*,struct hid_item*) ;
 struct hid_data* hid_start_parse (int ,int,int) ;
 int memset (struct hid_item*,int ,int) ;

int
hid_report_size(report_desc_t r, enum hid_kind k, int id)
{
 struct hid_data *d;
 struct hid_item h;
 uint32_t temp;
 uint32_t hpos;
 uint32_t lpos;
 int report_id = 0;

 hpos = 0;
 lpos = 0xFFFFFFFF;

 memset(&h, 0, sizeof h);
 for (d = hid_start_parse(r, 1 << k, id); hid_get_item(d, &h); ) {
  if (h.kind == k) {

   if (lpos > h.pos)
    lpos = h.pos;

   temp = h.pos + (h.report_size * h.report_count);

   if (hpos < temp)
    hpos = temp;
   if (h.report_ID != 0)
    report_id = 1;
  }
 }
 hid_end_parse(d);


 if (lpos > hpos)
  temp = 0;
 else
  temp = hpos - lpos;


 return ((temp + 7) / 8 + report_id);
}
