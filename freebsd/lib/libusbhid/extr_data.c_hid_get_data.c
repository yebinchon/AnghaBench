
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_3__ {scalar_t__ report_ID; int pos; int report_size; scalar_t__ logical_minimum; scalar_t__ logical_maximum; } ;
typedef TYPE_1__ hid_item_t ;



int32_t
hid_get_data(const void *p, const hid_item_t *h)
{
 const uint8_t *buf;
 uint32_t hpos;
 uint32_t hsize;
 uint32_t data;
 int i, end, offs;

 buf = p;


 if (h->report_ID > 0)
  buf++;

 hpos = h->pos;
 hsize = h->report_size;


 if (hsize == 0)
  return (0);
 if (hsize > 32)
  hsize = 32;

 offs = hpos / 8;
 end = (hpos + hsize) / 8 - offs;
 data = 0;
 for (i = 0; i <= end; i++)
  data |= buf[offs + i] << (i*8);


 data >>= hpos % 8;
 hsize = 32 - hsize;


 if ((h->logical_minimum < 0) || (h->logical_maximum < 0))
  data = (int32_t)((int32_t)data << hsize) >> hsize;
 else
  data = (uint32_t)((uint32_t)data << hsize) >> hsize;

 return (data);
}
