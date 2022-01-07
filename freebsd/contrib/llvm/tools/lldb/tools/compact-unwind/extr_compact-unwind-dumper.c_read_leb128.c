
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



uint64_t read_leb128(uint8_t **offset) {
  uint64_t result = 0;
  int shift = 0;
  while (1) {
    uint8_t byte = **offset;
    *offset = *offset + 1;
    result |= (byte & 0x7f) << shift;
    if ((byte & 0x80) == 0)
      break;
    shift += 7;
  }

  return result;
}
