
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int WIND_ERR_INVALID_UTF8 ;

__attribute__((used)) static int
utf8toutf32(const unsigned char **pp, uint32_t *out)
{
    const unsigned char *p = *pp;
    unsigned c = *p;

    if (c & 0x80) {
 if ((c & 0xE0) == 0xC0) {
     const unsigned c2 = *++p;
     if ((c2 & 0xC0) == 0x80) {
  *out = ((c & 0x1F) << 6)
      | (c2 & 0x3F);
     } else {
  return WIND_ERR_INVALID_UTF8;
     }
 } else if ((c & 0xF0) == 0xE0) {
     const unsigned c2 = *++p;
     if ((c2 & 0xC0) == 0x80) {
  const unsigned c3 = *++p;
  if ((c3 & 0xC0) == 0x80) {
      *out = ((c & 0x0F) << 12)
   | ((c2 & 0x3F) << 6)
   | (c3 & 0x3F);
  } else {
      return WIND_ERR_INVALID_UTF8;
  }
     } else {
  return WIND_ERR_INVALID_UTF8;
     }
 } else if ((c & 0xF8) == 0xF0) {
     const unsigned c2 = *++p;
     if ((c2 & 0xC0) == 0x80) {
  const unsigned c3 = *++p;
  if ((c3 & 0xC0) == 0x80) {
      const unsigned c4 = *++p;
      if ((c4 & 0xC0) == 0x80) {
   *out = ((c & 0x07) << 18)
       | ((c2 & 0x3F) << 12)
       | ((c3 & 0x3F) << 6)
       | (c4 & 0x3F);
      } else {
   return WIND_ERR_INVALID_UTF8;
      }
  } else {
      return WIND_ERR_INVALID_UTF8;
  }
     } else {
  return WIND_ERR_INVALID_UTF8;
     }
 } else {
     return WIND_ERR_INVALID_UTF8;
 }
    } else {
 *out = c;
    }

    *pp = p;

    return 0;
}
