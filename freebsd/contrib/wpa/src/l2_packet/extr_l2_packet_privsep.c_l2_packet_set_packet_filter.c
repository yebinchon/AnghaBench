
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_packet_data {int dummy; } ;
typedef enum l2_packet_filter_type { ____Placeholder_l2_packet_filter_type } l2_packet_filter_type ;



int l2_packet_set_packet_filter(struct l2_packet_data *l2,
    enum l2_packet_filter_type type)
{
 return -1;
}
