
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bt_devfilter {int event_mask; } ;


 int bit_test (int ,scalar_t__) ;

int
bt_devfilter_evt_tst(struct bt_devfilter const *filter, uint8_t event)
{
 return (bit_test(filter->event_mask, event - 1));
}
