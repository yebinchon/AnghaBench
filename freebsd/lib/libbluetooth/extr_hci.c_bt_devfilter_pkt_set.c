
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bt_devfilter {int packet_mask; } ;


 int bit_set (int ,scalar_t__) ;

void
bt_devfilter_pkt_set(struct bt_devfilter *filter, uint8_t type)
{
 bit_set(filter->packet_mask, type - 1);
}
