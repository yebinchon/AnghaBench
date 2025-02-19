
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int
ldns_b32_pton_base(const char* src, size_t src_sz,
  uint8_t* dst, size_t dst_sz,
  bool extended_hex, bool check_padding)
{
 size_t i = 0;
 char ch = '\0';
 uint8_t buf[8];
 uint8_t* start = dst;

 while (src_sz) {

  for (i = 0; i < 8; i++) {

   do {
    ch = *src++;
    --src_sz;

   } while (isspace((unsigned char)ch) && src_sz > 0);

   if (ch == '=' || ch == '\0')
    break;

   else if (extended_hex)

    if (ch >= '0' && ch <= '9')
     buf[i] = (uint8_t)ch - '0';
    else if (ch >= 'a' && ch <= 'v')
     buf[i] = (uint8_t)ch - 'a' + 10;
    else if (ch >= 'A' && ch <= 'V')
     buf[i] = (uint8_t)ch - 'A' + 10;
    else
     return -1;

   else if (ch >= 'a' && ch <= 'z')
    buf[i] = (uint8_t)ch - 'a';
   else if (ch >= 'A' && ch <= 'Z')
    buf[i] = (uint8_t)ch - 'A';
   else if (ch >= '2' && ch <= '7')
    buf[i] = (uint8_t)ch - '2' + 26;
   else
    return -1;
  }

  if (i < 8)
   break;


  if (dst_sz < 5)
   return -1;



  dst[0] = buf[0] << 3 | buf[1] >> 2;




  dst[1] = buf[1] << 6 | buf[2] << 1 | buf[3] >> 4;



  dst[2] = buf[3] << 4 | buf[4] >> 1;




  dst[3] = buf[4] << 7 | buf[5] << 2 | buf[6] >> 3;



  dst[4] = buf[6] << 5 | buf[7];

  dst += 5;
  dst_sz -= 5;
 }

 if (i > 0 && i < 8) {


  if (dst_sz < (i + 1) / 2)
   return -1;

  switch (i) {
  case 7:


   dst[3] = buf[4] << 7 | buf[5] << 2 | buf[6] >> 3;

  case 5:

   dst[2] = buf[3] << 4 | buf[4] >> 1;

  case 4:


   dst[1] = buf[1] << 6 | buf[2] << 1 | buf[3] >> 4;

  case 2:

   dst[0] = buf[0] << 3 | buf[1] >> 2;

   break;

  default:
   return -1;
  }
  dst += (i + 1) / 2;

  if (check_padding) {

   if (ch != '=')
    return -1;


   for (i = 8 - i - 1; i > 0; i--) {

    do {
     if (src_sz == 0)
      return -1;
     ch = *src++;
     src_sz--;

    } while (isspace((unsigned char)ch));

    if (ch != '=')
     return -1;
   }
  }
 }
 return dst - start;
}
