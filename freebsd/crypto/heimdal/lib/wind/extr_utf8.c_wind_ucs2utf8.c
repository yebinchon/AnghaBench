
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int WIND_ERR_OVERRUN ;
 int* first_char ;

int
wind_ucs2utf8(const uint16_t *in, size_t in_len, char *out, size_t *out_len)
{
    uint16_t ch;
    size_t i, len, o;

    for (o = 0, i = 0; i < in_len; i++) {
 ch = in[i];

 if (ch < 0x80) {
     len = 1;
 } else if (ch < 0x800) {
     len = 2;
 } else
     len = 3;

 o += len;

 if (out) {
     if (o >= *out_len)
  return WIND_ERR_OVERRUN;

     switch(len) {
     case 3:
  out[2] = (ch | 0x80) & 0xbf;
  ch = ch >> 6;
     case 2:
  out[1] = (ch | 0x80) & 0xbf;
  ch = ch >> 6;
     case 1:
  out[0] = ch | first_char[len - 1];
     }
     out += len;
 }
    }
    if (out) {
 if (o >= *out_len)
     return WIND_ERR_OVERRUN;
 *out = '\0';
    }
    *out_len = o;
    return 0;
}
