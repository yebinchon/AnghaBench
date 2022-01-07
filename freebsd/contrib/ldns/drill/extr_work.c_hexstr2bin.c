
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int error (char*) ;

__attribute__((used)) static size_t
hexstr2bin(char *hexstr, int len, uint8_t *buf, size_t offset, size_t buf_len)
{
 char c;
 int i;
 uint8_t int8 = 0;
 int sec = 0;
 size_t bufpos = 0;

 if (len % 2 != 0) {
  return 0;
 }

 for (i=0; i<len; i++) {
  c = hexstr[i];


  if (c != ' ') {
   if (c >= '0' && c <= '9') {
    int8 += c & 0x0f;
   } else if (c >= 'a' && c <= 'z') {
    int8 += (c & 0x0f) + 9;
   } else if (c >= 'A' && c <= 'Z') {
    int8 += (c & 0x0f) + 9;
   } else {
    return 0;
   }

   if (sec == 0) {
    int8 = int8 << 4;
    sec = 1;
   } else {
    if (bufpos + offset + 1 <= buf_len) {
     buf[bufpos+offset] = int8;
     int8 = 0;
     sec = 0;
     bufpos++;
    } else {
     error("Buffer too small in hexstr2bin");
    }
   }
  }
        }
        return bufpos;
}
