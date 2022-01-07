
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bt_devfilter {int event_mask; } ;


 int bit_clear (int ,scalar_t__) ;

void
bt_devfilter_evt_clr(struct bt_devfilter *filter, uint8_t event)
{
 bit_clear(filter->event_mask, event - 1);
}
