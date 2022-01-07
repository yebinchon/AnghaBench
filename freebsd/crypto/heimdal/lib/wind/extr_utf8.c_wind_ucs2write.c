
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int in ;
typedef unsigned char bom ;


 int WIND_ERR_LENGTH_NOT_MOD2 ;
 int WIND_ERR_OVERRUN ;
 unsigned int WIND_RW_BOM ;
 unsigned int WIND_RW_LE ;

int
wind_ucs2write(const uint16_t *in, size_t in_len, unsigned int *flags,
        void *ptr, size_t *out_len)
{
    unsigned char *p = ptr;
    size_t len = *out_len;


    if (len & 1)
 return WIND_ERR_LENGTH_NOT_MOD2;


    if (in_len == 0) {
 *out_len = 0;
 return 0;
    }


    if ((*flags) & WIND_RW_BOM) {
 uint16_t bom = 0xfffe;

 if (len < 2)
     return WIND_ERR_OVERRUN;

 if ((*flags) & WIND_RW_LE) {
     p[0] = (bom ) & 0xff;
     p[1] = (bom >> 8) & 0xff;
 } else {
     p[1] = (bom ) & 0xff;
     p[0] = (bom >> 8) & 0xff;
 }
 len -= 2;
    }

    while (in_len) {

 if (len < 2)
     return WIND_ERR_OVERRUN;
 if ((*flags) & WIND_RW_LE) {
     p[0] = (in[0] ) & 0xff;
     p[1] = (in[0] >> 8) & 0xff;
 } else {
     p[1] = (in[0] ) & 0xff;
     p[0] = (in[0] >> 8) & 0xff;
 }
 len -= 2;
 in_len--;
 p += 2;
 in++;
    }
    *out_len -= len;
    return 0;
}
