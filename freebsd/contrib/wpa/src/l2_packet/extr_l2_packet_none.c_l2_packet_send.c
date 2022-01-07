
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct l2_packet_data {int dummy; } ;



int l2_packet_send(struct l2_packet_data *l2, const u8 *dst_addr, u16 proto,
     const u8 *buf, size_t len)
{
 if (l2 == ((void*)0))
  return -1;






 return 0;
}
