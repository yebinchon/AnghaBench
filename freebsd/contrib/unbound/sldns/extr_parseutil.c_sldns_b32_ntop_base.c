
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t sldns_b32_ntop_calculate_size (size_t) ;
 size_t sldns_b32_ntop_calculate_size_no_padding (size_t) ;

__attribute__((used)) static int
sldns_b32_ntop_base(const uint8_t* src, size_t src_sz, char* dst, size_t dst_sz,
 int extended_hex, int add_padding)
{
 size_t ret_sz;
 const char* b32 = extended_hex ? "0123456789abcdefghijklmnopqrstuv"
     : "abcdefghijklmnopqrstuvwxyz234567";

 size_t c = 0;




 ret_sz = add_padding ? sldns_b32_ntop_calculate_size(src_sz)
        : sldns_b32_ntop_calculate_size_no_padding(src_sz);


 if (dst_sz < ret_sz + 1)
  return -1;


 dst[ret_sz] = '\0';


 while (src_sz >= 5) {

  dst[0] = b32[(src[0] ) >> 3];


  dst[1] = b32[(src[0] & 0x07) << 2 | src[1] >> 6];


  dst[2] = b32[(src[1] & 0x3e) >> 1];


  dst[3] = b32[(src[1] & 0x01) << 4 | src[2] >> 4];


  dst[4] = b32[(src[2] & 0x0f) << 1 | src[3] >> 7];


  dst[5] = b32[(src[3] & 0x7c) >> 2];


  dst[6] = b32[(src[3] & 0x03) << 3 | src[4] >> 5];


  dst[7] = b32[(src[4] & 0x1f) ];

  src_sz -= 5;
  src += 5;
  dst += 8;
 }

 switch (src_sz) {
 case 4:
  dst[6] = b32[(src[3] & 0x03) << 3];


  dst[5] = b32[(src[3] & 0x7c) >> 2];


    c = src[3] >> 7 ;

 case 3: dst[4] = b32[(src[2] & 0x0f) << 1 | c];


    c = src[2] >> 4 ;

 case 2: dst[3] = b32[(src[1] & 0x01) << 4 | c];


  dst[2] = b32[(src[1] & 0x3e) >> 1];


    c = src[1] >> 6 ;

 case 1: dst[1] = b32[(src[0] & 0x07) << 2 | c];


  dst[0] = b32[ src[0] >> 3];
 }

 if (add_padding) {
  switch (src_sz) {
   case 1: dst[2] = '=';
    dst[3] = '=';

   case 2: dst[4] = '=';

   case 3: dst[5] = '=';
    dst[6] = '=';

   case 4: dst[7] = '=';
  }
 }
 return (int)ret_sz;
}
