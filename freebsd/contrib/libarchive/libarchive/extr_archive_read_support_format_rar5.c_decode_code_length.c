
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rar5 {int dummy; } ;


 scalar_t__ ARCHIVE_OK ;
 scalar_t__ read_consume_bits (struct rar5*,int const*,int,int*) ;

__attribute__((used)) static int decode_code_length(struct rar5* rar, const uint8_t* p,
    uint16_t code)
{
 int lbits, length = 2;
 if(code < 8) {
  lbits = 0;
  length += code;
 } else {
  lbits = code / 4 - 1;
  length += (4 | (code & 3)) << lbits;
 }

 if(lbits > 0) {
  int add;

  if(ARCHIVE_OK != read_consume_bits(rar, p, lbits, &add))
   return -1;

  length += add;
 }

 return length;
}
