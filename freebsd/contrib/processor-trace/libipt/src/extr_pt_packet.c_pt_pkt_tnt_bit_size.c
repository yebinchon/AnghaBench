
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint8_t pt_pkt_tnt_bit_size(uint64_t payload)
{
 uint8_t size;




 for (size = 0; ; size += 1) {
  payload >>= 1;
  if (!payload)
   break;
 }

 return size;
}
