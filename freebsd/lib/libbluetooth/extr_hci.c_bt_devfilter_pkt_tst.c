
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bt_devfilter {int packet_mask; } ;


 int bit_test (int ,scalar_t__) ;

int
bt_devfilter_pkt_tst(struct bt_devfilter const *filter, uint8_t type)
{
 return (bit_test(filter->packet_mask, type - 1));
}
