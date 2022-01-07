
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint64_t pt_pkt_read_value(const uint8_t *pos, int size)
{
 uint64_t val;
 int idx;

 for (val = 0, idx = 0; idx < size; ++idx) {
  uint64_t byte = *pos++;

  byte <<= (idx * 8);
  val |= byte;
 }

 return val;
}
