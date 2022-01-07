
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int WIND_ERR_LENGTH_NOT_MOD2 ;
 int WIND_ERR_NO_BOM ;
 int WIND_ERR_OVERRUN ;
 unsigned int WIND_RW_BE ;
 unsigned int WIND_RW_BOM ;
 unsigned int WIND_RW_LE ;

int
wind_ucs2read(const void *ptr, size_t len, unsigned int *flags,
       uint16_t *out, size_t *out_len)
{
    const unsigned char *p = ptr;
    int little = ((*flags) & WIND_RW_LE);
    size_t olen = *out_len;


    if (len == 0) {
 *out_len = 0;
 return 0;
    }


    if (len & 1)
 return WIND_ERR_LENGTH_NOT_MOD2;







    if ((*flags) & WIND_RW_BOM) {
 uint16_t bom = (p[0] << 8) + p[1];
 if (bom == 0xfffe || bom == 0xfeff) {
     little = (bom == 0xfffe);
     p += 2;
     len -= 2;
 } else if (((*flags) & (WIND_RW_LE|WIND_RW_BE)) != 0) {

 } else
     return WIND_ERR_NO_BOM;
 *flags = ((*flags) & ~(WIND_RW_BOM|WIND_RW_LE|WIND_RW_BE));
 *flags |= little ? WIND_RW_LE : WIND_RW_BE;
    }

    while (len) {
 if (olen < 1)
     return WIND_ERR_OVERRUN;
 if (little)
     *out = (p[1] << 8) + p[0];
 else
     *out = (p[0] << 8) + p[1];
 out++; p += 2; len -= 2; olen--;
    }
    *out_len -= olen;
    return 0;
}
